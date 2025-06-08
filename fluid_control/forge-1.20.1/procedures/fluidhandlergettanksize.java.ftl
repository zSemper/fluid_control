(

	new Object() {
		public int getTankSize(LevelAccessor level, BlockPos pos) {
			if(level instanceof ILevelExtension _ext) {
				IFluidHandler _fluidhandler = _ext.getCapability(Capabilities.FluidHandler.BLOCK, pos, null);
				if(_fluidHhandler != null) {
					return _fluidhandler.getTankCapacity(0);
				}
			}
			return 0;
		}
	}.getTankSize(world, BlockPos.containing(${input$x}, ${input$y}, ${input$z}))

)