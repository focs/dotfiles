
#system "notify-send 'New Mail' '#{num} new mails' -t 3000 -i maildir-notify" if num > 0
system "terminal-notifier", "-message", "#{num} new mails (#{num_inbox_total_unread})", "-title", "Sup!" if num > 0
