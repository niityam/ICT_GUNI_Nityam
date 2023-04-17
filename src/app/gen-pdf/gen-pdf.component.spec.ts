import { ComponentFixture, TestBed } from '@angular/core/testing';

import { GenPDFComponent } from './gen-pdf.component';

describe('GenPDFComponent', () => {
  let component: GenPDFComponent;
  let fixture: ComponentFixture<GenPDFComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ GenPDFComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(GenPDFComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
