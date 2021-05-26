const initialState = {
  city: "Please Select", 
  jobs: []
};

const reducer = (state = initialState, action) => {
  switch (action.type) {
    case 'SWITCH_LOCATION':
      return {
        city: action.city,
        job: action.job
      };
    default:
      return state;
  }
};
webpa
export default reducer;
todo