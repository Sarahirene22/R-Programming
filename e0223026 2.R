rm(answer)
x<-rnorm(1)
if(x>1){
  answer<-"Greater than 1"
}else{ if(x>=-1){
  answer<-"Between -1 and 1"
}else{
  answer<-"Less than -1"
  }
}