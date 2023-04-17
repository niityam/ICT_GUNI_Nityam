import { Component } from '@angular/core';
import { DataServiceService } from '../data-service.service';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent {
  scrol(el: HTMLElement){
    setTimeout(() => {
      el.scrollIntoView({behavior: 'smooth'});
    }, 100);
  }
  prod_clicked: any;
  constructor(private dataService: DataServiceService) {
    this.dataService = dataService;
  }

  change(prod_clicked:any){
    this.dataService.prod_clicked = prod_clicked;
  }
}