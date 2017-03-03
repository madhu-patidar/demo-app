namespace :update_table do
  desc "Update post table"
  task update_task: :environment do
    Post.where(title: 'anMadhusud').each do |t|
      t.update_attribute :title, 'Hello'
    end
  end
end
