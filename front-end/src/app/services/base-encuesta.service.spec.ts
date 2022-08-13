import { TestBed } from '@angular/core/testing';

import { BaseEncuestaService } from './base-encuesta.service';

describe('BaseEncuestaService', () => {
  let service: BaseEncuestaService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(BaseEncuestaService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
