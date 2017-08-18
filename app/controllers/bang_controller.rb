class BangController < ApplicationController
  def index
  end

  def create
    

    @smallsort = params[:smallsorts]
    @title = params[:title]
    @content = params[:content]
    @person_limit = params[:person_limit]
    @pic = params[:file_url]
    uploader = NyaUploader.new
    uploader.store!(@pic)

    bang = Bang.new
    bang.title = @title
    bang.introduce = params[:introduce]
    bang.content = @content
    bang.person_limit = @person_limit
    bang.smallsort_id = @smallsort
    bang.king_id = current_user.id
    bang.image_url = uploader.thumb.url
    bang.bang_date = params[:bang_date]
    bang.bang_time = params[:bang_time]
    bang.save
    
    bang.users << current_user
    redirect_to bang_path(bang.id)
  end

  def new
    @bigsorts = Bigsort.all
    @smallsorts = Smallsort.all
  end

  def edit
  end

  def show
    @bang = Bang.find(params[:id])
    @king = User.find(@bang.king_id)
    
    @bang_users = []
    Bang.find(params[:id]).users.each do |b|
      @bang_users << b.id
    end
    
    @comments = @bang.comments.reverse
    @bang_date = @bang.bang_date.to_date
    year_sub = @bang_date.year - Time.now.year
    month_sub =@bang_date.month - Time.now.month
    day_sub = @bang_date.day - Time.now.day
    
    @dday = year_sub*365+month_sub*31+day_sub
    
  end

  def update
  end

  def destroy
 
    @bang = Bang.find(params[:id])
    @bang.destroy
    redirect_to '/'
  end
  
  def bang_in
    
    @bang_users = []
    Bang.find(params[:id]).users.each do |b|
      @bang_users << b.id
    end
    
    @bang = Bang.find(params[:id])
    if @bang.users.length < @bang.person_limit
      unless @bang_users.include? (current_user.id) 
        @bang.users << current_user
      end
    end
  end
end
