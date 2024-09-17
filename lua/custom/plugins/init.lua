-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
-- return {
--   {
--     'akinsho/toggleterm.nvim',
--     version = '*',
--     config = function()
--       require('toggleterm').setup {
--         size = 20 | function(term)
--           if term.direction == 'horizontal' then
--             return 15
--           elseif term.direction == 'vertical' then
--             return vim.o.columns * 0.4
--           end
--         end,
--         open_mapping = [[<c-\>]],
--       }
--     end,
--   },
-- }
--
return {
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    opts = {},
    config = function()
      require('toggleterm').setup {
        size = function(term)
          if term.direction == 'horizontal' then
            return 15
          elseif term.direction == 'vertical' then
            return vim.o.columns * 0.4
          end
        end,
        open_mapping = [[<c-\>]],
        start_in_insert = true,
        persist_size = true,
        direction = 'float',
      }
    end,
  },
}
