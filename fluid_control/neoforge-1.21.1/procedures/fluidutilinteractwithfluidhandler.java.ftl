(

	new Object() {
		public boolean interactFluidHandler(LevelAccessor level, Entity entity, BlockPos pos, InteractionHand hand) {
			if(entity instanceof Player player) {
				if(level instanceof ILevelExtension _ext) {
					IFluidHandler _fluidhandler = _ext.getCapability(Capabilities.FluidHandler.BLOCK, pos, null);
					return FluidUtil.interactWithFluidHandler(player, hand, _fluidhandler);
				}
				return false;
			}
			return false;
		}
	}.interactFluidHandler(world, ${input$entity}, BlockPos.containing(${input$x}, ${input$y}, ${input$z}), InteractionHand.${field$hand})

)