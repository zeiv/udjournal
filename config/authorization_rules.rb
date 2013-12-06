authorization do
	role :admin do
		includes :editor
		has_permission_on :articles, to: :manage
	end
	role :editor do
		includes :moderator
	end
	role :moderator do
		includes :student
		has_permission_on :articles, to: :curate
	end
	role :student do
		includes :guest
		has_permission_on :articles, to: :submit
		has_permission_on :articles do
			to :manage
			if_attribute user_id: is {user.id}
		end
	end
	role :guest do
		has_permission_on :articles, to: [:show, :index]
	end
end

# Please use only these privelages in the rules above:
# :manage, :curate, :submit, :read

privileges do
	privilege :manage do
		includes :edit, :update, :destroy
	end
	privilege :curate do
		includes :publish, :feature, :update, :edit
	end
	privilege :submit do
		includes :create, :new
	end
end