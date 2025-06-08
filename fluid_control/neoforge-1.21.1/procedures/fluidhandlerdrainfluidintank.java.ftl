{

	if(world instanceof ILevelExtension _ext) {
		IFluidHandler _fluidhandler = _ext.getCapability(Capabilities.FluidHandler.BLOCK, BlockPos.containing(${input$x}, ${input$y}, ${input$z}), null);
		if(_fluidhandler != null) {
			_fluidhandler.drain(new FluidStack(${input$FluidStack}.getFluid(), (int) ${input$Amount}), IFluidHandler.FluidAction.EXECUTE);
		}
	}

}