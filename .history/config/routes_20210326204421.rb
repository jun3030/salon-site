Rails.application.routes.draw do

  namespace :user do
    get 'store_members/index'
    get 'store_members/show'
  end
  namespace :user do
    get 'user_tasks/index'
  end
  namespace :public do
    get 'templetes/not_released_page'
  end
  namespace :user do
    get 'iregular_holidays/index'
  end
  namespace :user do
    get 'task_courses/index'
  end
  namespace :user do
    get 'calendars/show'
  end
  namespace :user do
    get 'staff_shifts/index'
    get 'staff_shifts/edit'
  end
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
      get "calendar/:id/calendar_preview", to: "calendars#calendar_preview", as: "calendar_preview"
      patch "calendar/:id/update_is_released", to: "calendars#update_is_released", as: "calendar_update_is_released"
      resources :calendars do
        get "dashboard", to: "top#dashboard"
        get "user_tasks/:id/update_by_drop", to: "user_tasks#update_by_drop"
        resources :user_tasks
        resource :calendar_config
        resources :staffs
        resources :task_courses
      end
    end
    resources :calendars, only: [] do
      resources :store_members do
      end
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
      get "tasks/:id/complete", to: "tasks#complete", as: :task_complete
      get "tasks/:id/cancel", to: "tasks#cancel", as: :task_cancel
      post "tasks/redirect_register_line", to: "tasks#redirect_register_line", as: :redirect_line
      get "tasks/:id/cancel_complete", to: "tasks#cancel_complete", as: :task_cancel_complete
    end
    # カレンダーが公開してない場合のページ
    get "not_released_page", to: "templetes#not_released_page"
  end

  namespace 'api' do
    namespace 'v1' do
      resources :task_courses, only: [:index]
      resources :staffs, only: [:index]
    end
  end

end
