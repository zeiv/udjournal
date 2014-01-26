authorization do
	role :admin do
		includes :staff
		has_permission_on :articles, to: :manage
		has_permission_on :papers, to: :manage
		has_permission_on :posters, to: :manage
		has_permission_on :sabstracts, to: :manage
		has_permission_on :rails_admin_history, to: [:list, :slider, :for_model, :for_object]
		has_permission_on :rails_admin_main, to: [:dashboard, :index, :show, :new, :edit, :create, :update, :destroy, :list, :delete, :bulk_delete, :bulk_destroy, :get_pages, :show_history]
	end
	role :staff do
		includes :editor
		has_permission_on :articles, to: [:edit, :update]
		has_permission_on :papers, to: [:edit, :update]
		has_permission_on :posters, to: [:edit, :update]
		has_permission_on :sabstracts, to: [:edit, :update]
		has_permission_on :rails_admin_history, to: [:list, :slider, :for_model, :for_object]
		has_permission_on :rails_admin_main, to: [:dashboard, :index, :show, :new, :edit, :create, :update, :destroy, :list, :get_pages, :show_history]
	end
	role :editor do
		includes :student
		has_permission_on :articles, to: :curate
		has_permission_on :rails_admin_history, to: [:list, :slider, :for_model, :for_object]
		has_permission_on :rails_admin_main, to: [:dashboard, :index, :show, :new, :edit, :create, :update, :destroy, :list, :get_pages, :show_history]
	end
	role :student do
		includes :guest
		has_permission_on :articles, to: :submit
		has_permission_on :articles do
			to :manage
			if_attribute user_id: is {user.id}
		end
		has_permission_on :photos, to: :submit
		has_permission_on :sabstracts, to: :submit
		has_permission_on :papers, to: :submit
		has_permission_on :posters, to: :submit
	end
	role :guest do
		has_permission_on :articles, to: [:show, :index]
		has_permission_on :photos, to: :view
		has_permission_on :papers, to: :view
		has_permission_on :posters, to: :view
		has_permission_on :sabstracts, to: :view
	end
end

# Please use only these privelages in the rules above:
# :manage, :curate, :submit, :read

privileges do
	privilege :manage do
		includes :edit, :update, :destroy, :delete
	end
	privilege :curate do
		includes :publish, :feature, :update, :edit
	end
	privilege :submit do
		includes :create, :new
	end
end