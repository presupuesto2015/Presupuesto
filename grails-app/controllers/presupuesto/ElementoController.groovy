package presupuesto



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ElementoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Elemento.list(params), model:[elementoInstanceCount: Elemento.count()]
    }

    def show(Elemento elementoInstance) {
        respond elementoInstance
    }

    def create() {
        respond new Elemento(params)
    }

    @Transactional
    def save(Elemento elementoInstance) {
        if (elementoInstance == null) {
            notFound()
            return
        }

        if (elementoInstance.hasErrors()) {
            respond elementoInstance.errors, view:'create'
            return
        }

        elementoInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'elementoInstance.label', default: 'Elemento'), elementoInstance.id])
                redirect elementoInstance
            }
            '*' { respond elementoInstance, [status: CREATED] }
        }
    }

    def edit(Elemento elementoInstance) {
        respond elementoInstance
    }

    @Transactional
    def update(Elemento elementoInstance) {
        if (elementoInstance == null) {
            notFound()
            return
        }

        if (elementoInstance.hasErrors()) {
            respond elementoInstance.errors, view:'edit'
            return
        }

        elementoInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Elemento.label', default: 'Elemento'), elementoInstance.id])
                redirect elementoInstance
            }
            '*'{ respond elementoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Elemento elementoInstance) {

        if (elementoInstance == null) {
            notFound()
            return
        }

        elementoInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Elemento.label', default: 'Elemento'), elementoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'elementoInstance.label', default: 'Elemento'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
