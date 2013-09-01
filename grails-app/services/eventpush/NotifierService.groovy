package eventpush

class NotifierService {

    @grails.events.Listener (namespace='browser')
    def pushToBrowser(Map data) {
        def html = "<p>" + data.name + "</p>" + "<p>${data.id}</p>"
        event (topic: 'stockChannel', data: html )
    }

}
