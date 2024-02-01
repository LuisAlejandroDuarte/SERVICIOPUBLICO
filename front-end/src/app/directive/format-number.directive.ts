import { Directive, ElementRef, EventEmitter, HostListener, Input, Output } from '@angular/core';

@Directive({
  selector: '[appFormatNumber]'
})

export class FormatNumberDirective {
  private regex: RegExp = new RegExp(/^\d*\.?\d{0,2}$/g);
  private specialKeys: Array<string> = ['Backspace', 'Tab', 'End', 'Home', '-', 'ArrowLeft', 'ArrowRight', 'Del', 'Delete'];
  constructor(private el: ElementRef) {
  }

  @Input() maxLength:number;
  @Output()  onBlurEmitter = new EventEmitter<string>();

  @HostListener('keydown', ['$event'])
  onKeyDown(event: KeyboardEvent) {    
    
    if (this.specialKeys.indexOf(event.key) !== -1) {
      return;
    }
     
      if (this.el.nativeElement.value.length+1>this.maxLength || null) {event.preventDefault();}

    let current: string = this.el.nativeElement.value;
    const position = this.el.nativeElement.selectionStart;
    const next: string = [current.slice(0, position), event.key == 'Decimal' ? '.' : event.key, current.slice(position)].join('');
   
    if (next && !String(next).match(this.regex)) {
      
      event.preventDefault();
    }
  }

  @HostListener("focus")
  onFocus() {
    console.log("Focus",this.el.nativeElement.value);
  }

  @HostListener("blur")
  onBlur() {
    this.onBlurEmitter.next(this.el.nativeElement.value);
    console.log("Blur",this.el.nativeElement.value);
  }

}
