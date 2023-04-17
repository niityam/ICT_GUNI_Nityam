import { Component } from '@angular/core';
import { DataServiceService } from '../data-service.service';

@Component({
  selector: 'app-gen-pdf',
  templateUrl: './gen-pdf.component.html',
  styleUrls: ['./gen-pdf.component.css']
})
export class GenPDFComponent {
  rmDetails: any[] = [];
  lotno_v = 0; lotsize_v = 0; issued_v = ""; prepared_v = ""; checked_v = ""; approved_v = "";

  constructor(private dataService: DataServiceService) {
    this.dataService = dataService;
    this.rmDetails = dataService.rmDetails;
    this.lotno_v = dataService.lotno_v;
    this.lotsize_v = dataService.lotsize_v;
    this.issued_v = dataService.issued_v;
    this.checked_v = dataService.checked_v;
    this.approved_v = dataService.approved_v;
  }
  currentDate = new Date();
  showBtn = true;
  print() {
    this.showBtn = false;
    setTimeout(() => {
      window.print();
    }, 4);
    
    setTimeout(() => {
      this.showBtn = true;
    }, 100);
  }
}