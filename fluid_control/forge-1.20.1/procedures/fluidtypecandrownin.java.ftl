(

new Object() {
	public boolean canDrownIn(FluidStack stack, Entity entity) {
		if(entity instanceof LivingEntity livingEntity) {
			return stack.getFluid().getFluidType().canDrownIn(livingEntity);
		}
		return false;
	}
}.canDrownIn(${input$FluidStack}, ${input$entity})

)