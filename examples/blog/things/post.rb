# A Post is owned by a User.

# It must have:
#   Title
#   Body

# Its status can be Not Posted or Posted.

# The app tracks:
#   When it was Posted
#   When it was created
#   When it was last updated

# When it is added to the list of Postings, its status is set to Posted.
# When it is removed from the list of Postings, its status is set to Not Posted.

# The owner can change the Title and Body.
# When it is deleted, its Comments are deleted.

class Post < Thing
  maintains :title, :body, :status

  restrictions {
    values_of(:status) [:posted, :not_posted]
  }

  owned_by :user {
    can_change :title, :body
    can_remove
  }

  tracks {
    when_created
    when_updated
    when_changed :status
  }

  starts_with {
    status = :not_posted
  }

  child_of :blog {
    on :added do
      status = :posted
    end

    on :removed do
      status = :not_posted
    end
  }
end