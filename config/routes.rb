RedmineApp::Application.routes.draw do
  match 'projects/:project_id/planner', :to => 'planner#index'

  resources :projects, :shallow => true do
    resources :plan_groups
    resources :plan_tasks
  end

  match '/plan_groups/:id/members/:membership_id',
    :to => 'plan_groups#remove_membership', :via => :delete,
    :as => 'plan_group_membership'
  match '/plan_groups/:id/members',
    :to => 'plan_groups#add_membership', :via => :post,
    :as => 'plan_group_memberships'
end
