class ListController < ApplicationController

  include MxitRails::Page

  def index
    @items = Item.all
  end

  def add
    @content = params[:content]

    form do
      step :content do
        input :content, 'What do you need to do?'
      end

      step :priority do
        input :priority, 'How important is it?'
        validate :numeric, 'Please enter a number between 1 and 5'
        validate 'Please enter a number between 1 and 5' do |input|
          (1..5).include? input.to_i
        end
        # TODO: Nice single-select input
      end

      step :date do
        input :date, 'When does it need to be done by?'
        #TODO: Nice date input
      end
    end

    submit do
      item = Item.new
      item.content = params[:content]
      item.priority = params[:priority]
      item.date = Date.parse params[:date]
      item.save!

      redirect_to '/'
    end
  end

  def complete
    item = Item.find params[:id]
    item.destroy
    redirect_to '/'
  end

end