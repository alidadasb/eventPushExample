package eventpush

class NotifierController {
    def notifierService
    def index() {
    10.times {
        println "counting $it"
        notifierService.pushToBrowser([name:'Alidad',id:it])
        println "sleeping..."
        Thread.sleep(2000)
    }
        render "Done"
    }
}
