# LaTeX Resume Makefile
# Usage: make resume

# Main target
resume: resume.pdf

# Compile LaTeX to PDF
resume.pdf: resume.tex
	@echo "Compiling LaTeX document..."
	pdflatex -interaction=nonstopmode resume.tex
	pdflatex -interaction=nonstopmode resume.tex  # Run twice for proper formatting
	@echo "Resume compiled successfully!"

# Clean up auxiliary files
clean:
	@echo "Cleaning up auxiliary files..."
	rm -f *.aux *.log *.out *.toc *.fdb_latexmk *.fls *.synctex.gz
	@echo "Cleanup complete!"

# Clean everything including PDF
clean-all: clean
	@echo "Removing PDF file..."
	rm -f resume.pdf
	@echo "All files cleaned!"

# Install required packages (macOS)
install-macos:
	@echo "Installing required packages on macOS..."
	brew install --cask mactex
	@echo "Installation complete! You may need to restart your terminal."

# Install required packages (Ubuntu/Debian)
install-ubuntu:
	@echo "Installing required packages on Ubuntu/Debian..."
	sudo apt-get update
	sudo apt-get install -y texlive-full latexmk
	@echo "Installation complete!"

# Install required packages (CentOS/RHEL/Fedora)
install-fedora:
	@echo "Installing required packages on Fedora..."
	sudo dnf install -y texlive-scheme-full latexmk
	@echo "Installation complete!"

# Open the PDF (macOS)
open-macos: resume.pdf
	@echo "Opening PDF..."
	open resume.pdf

# Open the PDF (Linux)
open-linux: resume.pdf
	@echo "Opening PDF..."
	xdg-open resume.pdf

# Default target
.PHONY: resume clean clean-all install-macos install-ubuntu install-fedora open-macos open-linux
