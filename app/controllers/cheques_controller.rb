class ChequesController < ApplicationController

  def cheque
      respond_to do |format|
        format.html
        format.pdf do
         pdf = render_to_string(pdf: "cheques/cheque.pdf", template: "cheques/cheque.pdf", layout: "pdf.html")
         send_data pdf, filename: 'report.pdf', type: 'application/pdf'
        end
      end
    end
  end

