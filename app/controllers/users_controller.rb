class UsersController < ApplicationController
  def index
    @users = [
        User.new(
                id: 1,
                name: 'Ivan',
                username: 'paleo1og',
                avatar_url: 'http://www.animated-gifs.eu/category_cartoons/avatars-100x100-cartoons-spongebob/0038.gif'
        ),
        User.new(
                id: 2,
                name: 'Misha',
                username: 'bumbum'
        )
    ]
  end

  def new
  end

  def edit
  end

  def show
    @user = User.new(
      name: 'Ivan',
      username: 'paleo1og',
      avatar_url: 'http://www.animated-gifs.eu/category_cartoons/avatars-100x100-cartoons-spongebob/0038.gif'
      )

    @questions = [
        Question.new(text: 'Как дела?', created_at: Date.parse('08.04.2019')),
        Question.new(text: 'Че кого?', created_at: Date.parse('09.04.2019')),
      ]

    @new_question = Question.new

  end
end
