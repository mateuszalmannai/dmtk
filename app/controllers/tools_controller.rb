class ToolsController < ApplicationController
  def index
    @tools = Tool.all
  end

  def show
    @tool = Tool.find(params[:id])
    end

  def edit 
    @tool = Tool.find(params[:id])
  end
end
