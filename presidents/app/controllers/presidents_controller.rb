class PresidentsController < ApplicationController
  acts_as_sdata :model => President,
                :feed => { :id => 'urn:uuid:60a76c80-d399-11d9-b93C-0003939e0af6',
                           :author => 'Sage',
                           :path => '/presidents',
                           :title => 'List of US presidents' }

  def index
    @presidents = President.all
  end
end