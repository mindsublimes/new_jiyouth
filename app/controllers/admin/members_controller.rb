class Admin::MembersController < Admin::BaseController
    def index
        @members = Member.all
    end
end