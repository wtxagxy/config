local status, neogen = pcall(require, "neogen")
if (not status) then
  return
end

neogen.setup()
neogen.generate(
  {
    type = "func" -- the annotation type to generate. Currently supported: func, class, type, file
  }
)
