module Todoist
    class Client    

      def initialize(token)
        @token = token
      end

      def token=(token)
        @token = token
      end
      
      def token
        @token
      end

      def misc_activity
        @misc_activity = Todoist::Misc::Activity.new(self) unless @misc_activity
        @misc_activity
      end

      def misc_backups
        @misc_backups = Todoist::Misc::Backups.new(self) unless @misc_backups
        @misc_backups
      end

      def misc_items
        @misc_completed = Todoist::Misc::Completed.new(self) unless @misc_completed
        @misc_completed
      end

      def misc_items
        @misc_items = Todoist::Misc::Items.new(self) unless @misc_items
        @misc_items
      end

      def misc_projects
        @misc_projects = Todoist::Misc::Projects.new(self) unless @misc_projects
        @misc_projects
      end

      def misc_query
        @misc_query = Todoist::Misc::Query.new(self) unless @misc_query
        @misc_query
      end

      def misc_quick
        @misc_quick = Todoist::Misc::Quick.new(self) unless @misc_quick
        @misc_quick
      end

      def misc_templates
        @misc_templates = Todoist::Misc::Templates.new(self) unless @misc_templates
        @misc_templates
      end

      def misc_uploads
        @misc_uploads = Todoist::Misc::Uploads.new(self) unless @misc_uploads
        @misc_uploads
      end

      def misc_user
        @misc_user = Todoist::Misc::User.new(self) unless @misc_user
        @misc_user
      end

      def sync_filters
        @sync_filters = Todoist::Sync::Filters.new(self) unless @sync_filters
        @sync_filters
      end

      def sync_items
        @sync_items = Todoist::Sync::Items.new(self) unless @sync_items
        @sync_items
      end

      def sync_labels
        @sync_labels = Todoist::Sync::Labels.new(self) unless @sync_labels
        @sync_labels
      end

      def sync_notes
        @sync_notes = Todoist::Sync::Notes.new(self) unless @sync_notes
        @sync_notes
      end

      def sync_projects
        @sync_projects = Todoist::Sync::Projects.new(self) unless @sync_projects
        @sync_projects
      end

      def sync_reminders
        @sync_reminders = Todoist::Sync::Reminders.new(self) unless @sync_reminders
        @sync_reminders
      end

    end
end