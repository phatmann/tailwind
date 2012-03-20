# A Comment is attached to a Post and owned by a User.

# It must have:
#   Body

# The app tracks:
#   When it was created
#   When it was last updated

# The owner can change the Body.

# When it is detached from its Post, it is discarded.

class Comment < Thing
  maintains :body

  owned_by :user {
    can_change :body
    can_remove
  }

  tracks {
    when_created
    when_updated
  }

  child_of :post
end