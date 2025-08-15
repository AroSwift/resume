# Aaron Barlow - Professional Resume

<div align="center">

## **[View PDF Resume](resume.pdf)** &nbsp;&nbsp; | &nbsp;&nbsp; **[View Source](resume.tex)**


![LaTeX](https://img.shields.io/badge/LaTeX-47A141?style=for-the-badge&logo=latex&logoColor=white)
![PDF](https://img.shields.io/badge/PDF-FF0000?style=for-the-badge&logo=adobe-acrobat-reader&logoColor=white)
![Make](https://img.shields.io/badge/Make-FF6B35?style=for-the-badge&logo=gnu&logoColor=white)

*A clean, modern LaTeX resume template with professional formatting and easy customization*

[![Compile Status](https://img.shields.io/badge/Compile-Status-success?style=flat-square)](https://github.com/aroswift/resume)
[![License](https://img.shields.io/badge/License-MIT-blue.svg?style=flat-square)](LICENSE)

</div>

---

## Features

- **Modern Design**: Clean, professional layout with Georgia font
- **Easy Customization**: Simple LaTeX commands for consistent formatting
- **Cross-Platform**: Works on macOS, Linux, and Windows
- **Automated Build**: Makefile for seamless compilation
- **Font Support**: Uses XeLaTeX for advanced typography
- **Responsive Layout**: Optimized for A4 paper with compact margins

## Quick Start

### Prerequisites

You'll need a modern LaTeX distribution with XeLaTeX support:

**macOS** (using Homebrew):
```bash
brew install --cask mactex
# Or: make install-macos
```

**Ubuntu/Debian**:
```bash
sudo apt-get update && sudo apt-get install -y texlive-full latexmk
# Or: make install-ubuntu
```

**Fedora/CentOS/RHEL**:
```bash
sudo dnf install -y texlive-scheme-full latexmk
# Or: make install-fedora
```

**Windows**: Download and install [MiKTeX](https://miktex.org/download) or [TeX Live](https://www.tug.org/texlive/)

### Compile the Resume

**Using Makefile (Recommended)**:
```bash
git clone https://github.com/aroswift/resume.git
cd resume
make resume
```

**Manual Compilation**:
```bash
make clean
xelatex -interaction=nonstopmode resume.tex
xelatex -interaction=nonstopmode resume.tex  # Run twice for proper formatting
```

**Quick Compile (Single Run)**:
```bash
xelatex resume.tex
```

**View the Resume**:
- macOS: `make open-macos`
- Linux: `make open-linux`
- Windows: Open `resume.pdf` in your preferred PDF viewer

## Project Structure

```
resume/
├── resume.tex          # Main LaTeX source file
├── resume.pdf          # Compiled PDF output (generated)
├── Makefile            # Build automation and utilities
├── README.md           # This documentation
└── .gitignore          # Git ignore patterns
```

## Customization

### Content Updates

Edit `resume.tex` to personalize your information:

1. **Personal Information**: Update contact details in the header section
2. **Experience**: Modify `\experienceentry` commands in the Experience section
3. **Skills**: Update the skills list in the Skills section
4. **Projects**: Add or modify projects in the Selected Projects section
5. **Education**: Update academic background and achievements

### Styling Options

The resume features a professional design with:
- **Font**: Georgia (professional, readable)
- **Font Size**: 11pt (optimal readability)
- **Paper**: A4 (international standard)
- **Margins**: 0.6 inches (compact layout)
- **Colors**: Gray accents for visual hierarchy

### Custom Commands

- `\resumesection{Title}` - Creates section headers with gray underlines
- `\experienceentry{Company}{Dates}{Title}{Location}` - Formats experience entries
- `\smallbullet{Text}` - Creates compact bullet points

## Available Commands

| Command | Description |
|---------|-------------|
| `make resume` | Compile the resume to PDF |
| `make clean` | Remove auxiliary LaTeX files |
| `make clean-all` | Remove all generated files including PDF |
| `make install-macos` | Install LaTeX on macOS |
| `make install-ubuntu` | Install LaTeX on Ubuntu/Debian |
| `make install-fedora` | Install LaTeX on Fedora/CentOS |
| `make open-macos` | Open PDF on macOS |
| `make open-linux` | Open PDF on Linux |

## Troubleshooting

### Common Issues

**Fontspec Package Error**:
```
Fatal Package fontspec Error: The fontspec package requires either XeTeX or LuaTeX
```
*Solution*: Use XeLaTeX instead of pdflatex. The Makefile is already configured correctly.

**Compilation Engine Requirements**:
- This resume uses `fontspec` package which requires XeLaTeX or LuaLaTeX
- **Do NOT use**: `pdflatex` or `latex`
- **Use**: `xelatex` or `lualatex`
- The Makefile automatically uses the correct engine

**Missing LaTeX Packages**:
```
! LaTeX Error: File `fontspec.sty' not found
```
*Solution*: Install a complete TeX Live distribution that includes all packages.

**Font Not Found**:
```
! Font \TU/Georgia(0)/m/n/11=Georgia at 11pt not loadable
```
*Solution*: Georgia font should be available on most systems. If issues persist, the template will fall back to system fonts.

**Compilation Errors**:
```
! LaTeX Error: Something's wrong--perhaps a missing \item
```
*Solution*: Run `make clean` and recompile to clear any cached files.

**Minor Font Warnings**:
```
Missing character: There is no ‑ (U+2011) in font Georgia
```
*Solution*: These warnings don't prevent compilation and can be safely ignored. The PDF will still generate correctly.

### Getting Help

1. Check Installation: Ensure you have a complete LaTeX distribution installed
2. Verify Files: Make sure all files are in the same directory
3. Clean Build: Run `make clean` before recompiling
4. Check Logs: Review `resume.log` for detailed error information


### Development Guidelines

- Test compilation on multiple platforms
- Update documentation for any new features
- Follow existing code style and formatting
- Add appropriate error handling

## License

This resume template is freely available and modifiable for personal and professional use. Feel free to adapt it for your own needs!

---

<div align="center">

**Built with LaTeX and Make**

[![GitHub](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/aroswift)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://linkedin.com/in/allaaronbarlow)
[![Website](https://img.shields.io/badge/Website-000000?style=for-the-badge&logo=globe&logoColor=white)](https://aaronbarlow.dev)

</div>
