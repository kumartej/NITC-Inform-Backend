import { Component } from '@angular/core';
import { NavController, NavParams } from 'ionic-angular';
import { ViewChild } from '@angular/core';
import { Slides } from 'ionic-angular';
import { LoginPage } from '../login/login';
/*
  Generated class for the Subscribe page.

  See http://ionicframework.com/docs/v2/components/#navigation for more info on
  Ionic pages and navigation.
*/
@Component({
  selector: 'page-subscribe',
  templateUrl: 'subscribe.html'
})
export class SubscribePage {
   public depts=['CSE','CHEM','ECE','EEE','MECH','CIVIL','PE','BIOTECH'];
   public types=['Student','Faculty','Staff'];
   public progs=['UG','PG','PHD','MCA'];
   public years=['FirstYear','SecondYear','ThirdYear','FourthYear'];
   public batchs=['A-Batch','B-Batch'];
  
  constructor(public navCtrl: NavController, public navParams: NavParams) {}
  @ViewChild(Slides) slides: Slides;
  
  ionViewDidLoad() {
    console.log('ionViewDidLoad SubscribePage');
  }
  goToSlide(){
  let currentIndex = this.slides.getActiveIndex();
     this.slides.slideTo(currentIndex+1,500);
     this.slides.lockSwipeToPrev(true);
   }
 SubmitFaculty(){
    this.navCtrl.setRoot(LoginPage);
   }
}
