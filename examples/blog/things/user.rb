# A User must have:
#   Name
#   Email

# The app tracks:
#   When it was created
#   When it was last updated

# The owner can change the Name and Email.

class User < Thing
  maintains :name, :email

  owned_by_current_user {
    can_change :name, :email
  }

  tracks {
    when_created
    when_updated
  }
end