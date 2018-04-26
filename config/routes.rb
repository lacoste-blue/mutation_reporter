Rails.application.routes.draw do
  root to: 'welcome#index'
  resources :smell_offenses
  resources :mutant_coverage_reports
  resources :coverage_reports
  resources :rubycritic_reports
  resources :rubocop_reports
  resources :mutation_tests
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
