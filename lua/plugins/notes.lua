return {
  "burnskp/notes.nvim",
  opts = {
    notesDir = "/data/notes/global",
    projectNotesDir = "/data/notes/projects",
  },
  cmd = { "Notes", "NotesGrep", "LastNote", "ProjectNotes", "ProjectScratch" },
  keys = {
    {
      "<leader>nF",
      "<cmd>Notes<CR>",
      desc = "Find Notes"
    },
    {
      "<leader>nf",
      "<cmd>Notes float<CR>",
      desc = "Find Notes (Float)",
    },
    {
      "<leader>nG",
      "<cmd>NotesGrep<CR>",
      desc = "Search Notes Content",
    },
    {
      "<leader>ng",
      "<cmd>NotesGrep float<CR>",
      desc = "Search Notes Content (Float)",
    },
    {
      "<leader>nP",
      "<cmd>ProjectNotes<CR>",
      desc = "Search Project Notes",
    },
    {
      "<leader>np",
      "<cmd>ProjectNotes float<CR>",
      desc = "Search Project Notes (Float)",
    },
    {
      "<leader>nn",
      "<cmd>LastNote float<CR>",
      desc = "Open Last Note (Float)",
    },
    {
      "<leader>ns",
      "<cmd>ProjectScratch float<CR>",
      desc = "Open Project Scratch (Float)",
    },
    {
      "<leader>nS",
      "<cmd>ProjectScratch<CR>",
      desc = "Open Project Scratch",
    },
    {
      "<leader>na",
      function() require("notes.commands").searchNotes("/data/notes", "grep", 'float') end,
      desc = "Grep All Notes (Float)",
    },
  }
}
