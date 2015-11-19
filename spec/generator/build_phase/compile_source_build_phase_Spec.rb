require 'spec_helper'

module Xcake
  module Generator
    describe CompileSourceBuildPhase do

      it "should not able to install folder" do
        file_reference = double()
        allow(file_reference).to receive(:path) { 'Folder/' }

        expect(CompileSourceBuildPhase.can_install_file_reference(file_reference)).to be(false)
      end

      it "should not able to install non source code file" do
        file_reference = double()
        allow(file_reference).to receive(:path) { 'File.txt' }

        expect(CompileSourceBuildPhase.can_install_file_reference(file_reference)).to be(false)
      end

      it "should be able to install c source code file" do
        file_reference = double()
        allow(file_reference).to receive(:path) { 'File.c' }

        expect(CompileSourceBuildPhase.can_install_file_reference(file_reference)).to be(true)
      end

      it "should be able to install objective-c source code file" do
        file_reference = double()
        allow(file_reference).to receive(:path) { 'File.m' }

        expect(CompileSourceBuildPhase.can_install_file_reference(file_reference)).to be(true)
      end

      it "should be able to install objective-c++ source code file" do
        file_reference = double()
        allow(file_reference).to receive(:path) { 'File.mm' }

        expect(CompileSourceBuildPhase.can_install_file_reference(file_reference)).to be(true)
      end

      it "should be able to install c++ source code file" do
        file_reference = double()
        allow(file_reference).to receive(:path) { 'File.cpp' }

        expect(CompileSourceBuildPhase.can_install_file_reference(file_reference)).to be(true)
      end

      it "should be able to install swift source code file" do
        file_reference = double()
        allow(file_reference).to receive(:path) { 'File.swift' }

        expect(CompileSourceBuildPhase.can_install_file_reference(file_reference)).to be(true)
      end

      #Test adding file reference
    end
  end
end