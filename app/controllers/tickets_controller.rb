class TicketsController < ApplicationController
  before_action :authenticate_user!, only: :create

  def index
    @tickets = current_user.tickets
  end

  def show
    @ticket = Ticket.find(params[:id])
  end

  def create
    @ticket = current_user.tickets.new # (must be ticket params)

    if @ticket.save
      redirect_to @ticket
    else
      redirect_to search_path
    end
  end
end