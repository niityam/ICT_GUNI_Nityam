import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { BatchComponent } from './batch/batch.component';
import { HomeComponent } from './home/home.component';
import { GenPDFComponent } from './gen-pdf/gen-pdf.component';

@NgModule({
  declarations: [
    AppComponent,
    BatchComponent,
    HomeComponent,
    GenPDFComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
