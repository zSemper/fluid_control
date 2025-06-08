(

	new Object() {
		public boolean isFluidValid(LevelAccessor level, BlockPos pos, FluidStack stack) {
			if(level instanceof ILevelExtension _ext) {
				IFluidHandler _fluidhandler = _ext.getCapability(Capabilities.FluidHandler.BLOCK, pos, null);
				if(_fluidhandler != null) {
					return _fluidhandler.isFluidValid(0, stack);
				}
			}
			return false;
		}
	}.isFluidValid(world, BlockPos.containing(${input$x}, ${input$y}, ${input$z}), ${input$FluidStack})

)