local M = {}
M.fn = vim.fn
M.o = vim.o
M.bo = vim.bo
M.wo = vim.wo
M.g = vim.g
M.opt = vim.opt
M.cmd = vim.cmd

M.opts = {
	noremap = true,
	silent = true
}

M.keymap = vim.api.nvim_set_keymap
M.map = vim.keymap.set

function M.eval(argument)
	return "<cmd>" .. argument .. "<CR>"
end

client_notifs = {}

function M:get_notif_data(client_id, token)
	if not client_notifs[client_id] then
		client_notifs[client_id] = {}
	end

	if not client_notifs[client_id][token] then
		client_notifs[client_id][token] = {}
	end

	return client_notifs[client_id][token]
end

spinner_frames = { "⣾", "⣽", "⣻", "⢿", "⡿", "⣟", "⣯", "⣷" }

function M:update_spinner(client_id, token)
	local notif_data = M.get_notif_data(client_id, token)

	if notif_data.spinner then
		local new_spinner = (notif_data.spinner + 1) % #spinner_frames
		notif_data.spinner = new_spinner

		notif_data.notification = vim.notify(nil, nil, {
			hide_from_history = true,
			icon = spinner_frames[new_spinner],
			replace = notif_data.notification,
		})

		vim.defer_fn(function()
			M.update_spinner(client_id, token)
		end, 100)
	end
end

function M:format_title(title, client_name)
	return client_name .. (#title > 0 and ": " .. title or "")
end

function M:format_message(message, percentage)
	return (percentage and percentage .. "%\t" or "") .. (message or "")
end

return M
