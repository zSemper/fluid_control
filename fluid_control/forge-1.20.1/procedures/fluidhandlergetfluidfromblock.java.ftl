(

	new Object() {
		public FluidStack getFluidIntTank(LevelAccessor level, BlockPos pos) {
			if (level instanceof ILevelExtension _ext) {
				IFluidHandler _fluidhandler = _ext.getCapability(Capabilities.FluidHandler.BLOCK, pos, null);
				if (_fluidhandler != null) {
					return _fluidhandler.getFluidInTank(0);
				} else {
					return FluidStack.EMPTY;
				}
			}
			return FluidStack.EMPTY;
		}
	}.getFluidInTank(world, BlockPos.containing(${input$x}, ${input$y}, ${input$z}))

)