# A Blog must have:
#   Name

# The app tracks:
#   When it was created
#   When it was last updated

# The owner can change the Name.

class Blog < Thing
  maintains :name

  owned_by current_user {
    can_change :name
  }

  tracks {
    when_created
    when_updated
  }
end