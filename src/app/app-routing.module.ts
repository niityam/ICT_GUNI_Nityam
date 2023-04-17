import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { BatchComponent } from './batch/batch.component';
import { HomeComponent } from './home/home.component';
import { GenPDFComponent } from './gen-pdf/gen-pdf.component';

const routes: Routes = [{path:"batch", component:BatchComponent}, {path:"home", component:HomeComponent}, {path:"genpdf", component:GenPDFComponent}];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
