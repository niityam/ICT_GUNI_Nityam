import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class DataServiceService {
  rmDetails: any[] = [];
  lotno_v=0; lotsize_v=0; issued_v=""; prepared_v=""; checked_v=""; approved_v="";
  prod_clicked = "";
  constructor() { }
}