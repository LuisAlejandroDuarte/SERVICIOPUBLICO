import { ComponentFixture, TestBed } from '@angular/core/testing';

import { BuscarPredioComponent } from './buscar-predio.component';

describe('BuscarPredioComponent', () => {
  let component: BuscarPredioComponent;
  let fixture: ComponentFixture<BuscarPredioComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ BuscarPredioComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(BuscarPredioComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
