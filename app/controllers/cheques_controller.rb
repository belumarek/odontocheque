class ChequesController < ApplicationController

  def cheque
      respond_to do |format|
        format.html
        format.pdf do
         pdf = render_to_string(pdf: "cheques/cheque.pdf.erb", template: "cheques/cheque.pdf.erb", layout: "pdf.html")
         send_data pdf, filename: 'report.pdf', type: 'application/pdf'
        end
      end
    end
  end
  # def cheque
  #   pdf = WickedPdf.new.pdf_from_string(
  #   render_to_string(
  #   template: "cheques/cheque.pdf.erb",
  #   layout: "pdf.html"))
  #   send_data(pdf,
  #   filename: "file_name.pdf",
  #   type: "application/pdf",
  #   disposition: "attachment")
  #   end
  # end