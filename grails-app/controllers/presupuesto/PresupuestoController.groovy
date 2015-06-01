package presupuesto



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PresupuestoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Presupuesto.list(params), model:[presupuestoInstanceCount: Presupuesto.count()]
    }

    def show(Presupuesto presupuestoInstance) {
        respond presupuestoInstance
    }

    def create() {
        respond new Presupuesto(params)
    }

    @Transactional
    def save(Presupuesto presupuestoInstance) {
        if (presupuestoInstance == null) {
            notFound()
            return
        }

        if (presupuestoInstance.hasErrors()) {
            respond presupuestoInstance.errors, view:'create'
            return
        }

        presupuestoInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'presupuestoInstance.label', default: 'Presupuesto'), presupuestoInstance.id])
                redirect presupuestoInstance
            }
            '*' { respond presupuestoInstance, [status: CREATED] }
        }
    }

    def edit(Presupuesto presupuestoInstance) {
        respond presupuestoInstance
    }

    @Transactional
    def update(Presupuesto presupuestoInstance) {
        if (presupuestoInstance == null) {
            notFound()
            return
        }

        if (presupuestoInstance.hasErrors()) {
            respond presupuestoInstance.errors, view:'edit'
            return
        }

        presupuestoInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Presupuesto.label', default: 'Presupuesto'), presupuestoInstance.id])
                redirect presupuestoInstance
            }
            '*'{ respond presupuestoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Presupuesto presupuestoInstance) {

        if (presupuestoInstance == null) {
            notFound()
            return
        }

        presupuestoInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Presupuesto.label', default: 'Presupuesto'), presupuestoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'presupuestoInstance.label', default: 'Presupuesto'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
