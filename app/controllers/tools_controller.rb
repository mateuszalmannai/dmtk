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

  def update
    @tool = Tool.find(params[:id])
    tool_params = params.require(:tool)
                       .permit(:name, :description, :price)
    @tool.update(tool_params)
    redirect_to @tool
  end

  def new
    @tool = Tool.new
  end

  def create
    @tool = Tool.new(tool_params)
    @tool.save
    redirect_to @tool
  end

  private

  def tool_params
    params.require(:tool).permit(:name, :description, :price)
  end
end
