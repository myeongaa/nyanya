class SmallsortController < ApplicationController
  def index
  end

  def create
  end

  def new
  end

  def edit
  end

  def show
    @smallsort = Smallsort.find(params[:id])
    @bangs = Bang.where(:smallsort_id => params[:id]).reverse
  end

  def update
  end

  def destroy
  end
end
