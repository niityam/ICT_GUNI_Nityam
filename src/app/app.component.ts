import { Component } from '@angular/core';
import { NavigationEnd, Router } from '@angular/router';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'ambition_bmr';
  showHome: boolean = true;

  constructor(private router: Router){
    router.events.subscribe((val)=>{
      if(val instanceof NavigationEnd){
        if(val.url == '/genpdf'){
          this.showHome = false;
        }
        else{
          this.showHome = true;
        }
      }
    })
  }

}
