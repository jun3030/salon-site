Rails.application.routes.draw do

  get 'tasks/index'
  root to: 'home#index'

  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'
  }

  devise_scope :user do
    get "sign_in", :to => "users/sessions#new"
    get "sign_out", :to => "users/sessions#destroy"
  end

  # user権限(店長)
  scope module: :user do
    resources :users, only: [] do
      resources :calendars do
        get "dashboard", to: "top#dashboard"
        resources :staffs
      end
    end
    resources :calendars, only: [] do
      resources :store_members do
        resources :member_logs do
          collection {post :create_picture}
        end
        resources :member_pictures, only: [:create, :destroy]
      end
      get "store_member_task_show/:id", to:"store_members#store_member_task_show", as: "store_member_task_show"
      patch "store_member_task_update/:id", to: "store_members#update_task", as: "member_update_task"
      resources :iregular_holidays
      resources :staffs, only: [] do
        resources :staff_shifts
      end
    end
  end

  # public権限
  scope module: :public do
    get "task_create", to: "tasks#task_create", as: :task_create
    resources :calendars, only: [] do
      resources :tasks, except: [:show]
    end
  end

end
