# Aaron Barlow - Professional Resume

This repository contains a professional LaTeX resume for Aaron Barlow, formatted using the `moderncv` class for a clean, modern appearance.

## Quick Start

### Prerequisites

You need a LaTeX distribution installed on your system:

- **macOS**: Install MacTeX using `brew install --cask mactex`
- **Ubuntu/Debian**: `sudo apt-get install texlive-full latexmk`
- **Fedora/CentOS**: `sudo dnf install texlive-scheme-full latexmk`

### Compile the Resume

1. **Using Makefile (Recommended)**:
   ```bash
   make resume
   ```

2. **Manual compilation**:
   ```bash
   pdflatex resume.tex
   pdflatex resume.tex  # Run twice for proper formatting
   ```

### View the Resume

- **macOS**: `make open-macos`
- **Linux**: `make open-linux`
- **Manual**: Open `resume.pdf` in your preferred PDF viewer

## File Structure

- `resume.tex` - Main LaTeX source file
- `resume.pdf` - Compiled PDF output (generated after compilation)
- `Makefile` - Build automation and utility commands
- `README.md` - This file

## Customization

### Adding/Modifying Content

Edit `resume.tex` to update your information:

1. **Personal Information**: Update the `\name`, `\phone`, `\email`, and social media links
2. **Experience**: Modify the `\cventry` commands in the Experience section
3. **Skills**: Update the `\cvitem` commands in the Skills section
4. **Projects**: Add or modify projects in the Selected Projects section

### Styling Options

The resume uses the `moderncv` class with the following settings:

- **Style**: `classic` - Clean, professional appearance
- **Color**: `blue` - Professional blue color scheme
- **Font Size**: 11pt
- **Paper**: A4

You can change these by modifying the document class options and theme settings at the top of `resume.tex`.

## Available Make Commands

- `make resume` - Compile the resume to PDF
- `make clean` - Remove auxiliary LaTeX files
- `make clean-all` - Remove all generated files including PDF
- `make install-macos` - Install LaTeX on macOS
- `make install-ubuntu` - Install LaTeX on Ubuntu/Debian
- `make install-fedora` - Install LaTeX on Fedora/CentOS
- `make open-macos` - Open PDF on macOS
- `make open-linux` - Open PDF on Linux

## Troubleshooting

### Common Issues

1. **Missing LaTeX packages**: If you get errors about missing packages, install a full LaTeX distribution
2. **Font issues**: The resume uses standard fonts, but if you have issues, ensure your LaTeX installation includes basic fonts
3. **Compilation errors**: Run `make clean` and try compiling again

### Getting Help

- Check that you have a complete LaTeX distribution installed
- Ensure all files are in the same directory
- Try running `make clean` before recompiling

## Professional Tips

1. **Keep it to one page**: The current format is designed to fit on a single page
2. **Update metrics**: Replace placeholder metrics with actual numbers where possible
3. **Tailor for jobs**: Modify keywords and focus areas based on specific job requirements
4. **Regular updates**: Keep your resume current with new projects and achievements

## License

This resume template is based on the `moderncv` LaTeX class, which is freely available and modifiable.
# resume
