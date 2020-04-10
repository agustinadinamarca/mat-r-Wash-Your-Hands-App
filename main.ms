
Experience Welcome {
    String img value("https://i.imgur.com/jGbfIai.png") as Image
    String title value("Wash Your Hands!") as Label
}


Experience Main {
    Integer time value(40) as Label
    String image value("https://imgur.com/T6z518N.jpg") as Image
    
    Decision btn action("MainContext.start") label("Start")
}


Experience Paso {
    Integer time as Label
    String image as Image
    String video value("") as Video
}

Application {
    Integer count

    Timer timer2
    Timer timer3
    
    OnInit {
        Welcome wexp = Welcome()
        
        timer2 = Timer(delay:1, function:@function(MainModule.func1), repeat:true)
        timer3 = Timer(delay:1, function:@function(MainModule.welcome), repeat:false)
        timer3.start()
        
        broker.ui.push("Welcome", wexp)
    }
}

Module MainModule {
    void welcome(Timer t) {
        Main exp = Main()
        broker.ui.push("Main", exp)
    }
    
    void func1(Timer t){
        count = count - 1
        Paso exp = broker.ui.getDataSource()
        if(count<0){
            exp.video = ""
            timer2.stop()
            broker.ui.dismiss()
        }else{
            exp.time = count
        }
        
        if(count==36){
            exp.video = "https://firebasestorage.googleapis.com/v0/b/standalone-f4669.appspot.com/o/klz02.mp4?alt=media&token=7ec47773-f2cc-4451-9804-03b696c5bac8"
        }
        
        if(count==34){
            exp.image="https://i.imgur.com/busu6tZ.png"
        }
        
        if(count==32){
            exp.video = ""
        }
        
        if(count==30){
            exp.video = "https://firebasestorage.googleapis.com/v0/b/standalone-f4669.appspot.com/o/klz02.mp4?alt=media&token=7ec47773-f2cc-4451-9804-03b696c5bac8"
        }
        
        if(count==28){
            exp.image="https://i.imgur.com/aXsOkVE.png"
        }
        
        if(count==26){
            exp.video = ""
        }
        
        if(count==24){
            exp.video = "https://firebasestorage.googleapis.com/v0/b/standalone-f4669.appspot.com/o/klz02.mp4?alt=media&token=7ec47773-f2cc-4451-9804-03b696c5bac8"
        }
        
        if(count==22){
            exp.image="https://i.imgur.com/aIqJXZe.png"
        }
        
        if(count==20){
            exp.video = ""
        }
        
        if(count==18){
            exp.video = "https://firebasestorage.googleapis.com/v0/b/standalone-f4669.appspot.com/o/klz02.mp4?alt=media&token=7ec47773-f2cc-4451-9804-03b696c5bac8"
        }
        
        if(count==16){
            exp.image="https://i.imgur.com/u2WbEJH.png"
        }
        
        if(count==14){
            exp.video = ""
        }
        
        if(count==12){
            exp.video = "https://firebasestorage.googleapis.com/v0/b/standalone-f4669.appspot.com/o/klz02.mp4?alt=media&token=7ec47773-f2cc-4451-9804-03b696c5bac8"
        }
        
        if(count==10){
            exp.image="https://i.imgur.com/NRY7Cih.png"
        }
        
        if(count==8){
            exp.video = ""
        }
        
        if(count==1){
            exp.video = "https://firebasestorage.googleapis.com/v0/b/standalone-f4669.appspot.com/o/klz02.mp4?alt=media&token=7ec47773-f2cc-4451-9804-03b696c5bac8"
        }
        
    }
}

RuleContext MainContext {

    Rule start {
        count = 40
        timer2.start()
        
        Paso p = Paso()
        p.time = 40
        p.image = "https://i.imgur.com/QmvqRhR.png"
        
        broker.ui.present("Paso", p)
    }
    
}