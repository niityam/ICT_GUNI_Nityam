import { Component } from '@angular/core';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  answer = 0;
  b = 0;

  calcp(v1: string){
    this.answer = (+v1 + +this.answer);
    this.b = 0;
  }
  calcm(v1: string){
    this.answer = (+v1 - +this.answer);
    this.b = 0;
  }
  calcmu(v1: string){
    this.answer = (+v1 * +this.answer);
    this.b = 0;
  }
  calcd(v1: string){
    this.answer = (+v1 / +this.answer);
    this.b = 0;
  }
  calcmo(v1: string){
    this.answer = (+v1 % +this.answer);
    this.b = 0;
  }
  calce(v1: string){
    this.answer = ((+v1) ** +this.answer);
    this.b = 0;
  }
  
}