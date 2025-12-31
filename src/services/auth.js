// Authentication services for VeXachat

export async function signUp(email, password, userData) {
  try {
    // This would connect to Supabase in production
    console.log('Signing up:', email);
    
    // Simulate API call
    await new Promise(resolve => setTimeout(resolve, 1000));
    
    return {
      success: true,
      user: {
        id: 'user_' + Date.now(),
        email,
        ...userData
      },
      error: null
    };
  } catch (error) {
    return {
      success: false,
      user: null,
      error: error.message
    };
  }
}

export async function login(email, password) {
  try {
    console.log('Logging in:', email);
    
    await new Promise(resolve => setTimeout(resolve, 1000));
    
    return {
      success: true,
      user: {
        id: 'user_123',
        email,
        name: 'Demo User'
      },
      error: null
    };
  } catch (error) {
    return {
      success: false,
      user: null,
      error: error.message
    };
  }
}

export async function logout() {
  console.log('Logging out');
  return { success: true };
}

export async function getCurrentUser() {
  return {
    id: 'user_123',
    email: 'demo@vexachat.com',
    name: 'Demo User',
    avatar: 'https://api.dicebear.com/7.x/avataaars/svg?seed=demo'
  };
}
