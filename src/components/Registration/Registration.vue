<template>
    <a-modal
      ref="modalreg"
      v-model="showModal"
      :footer="null"
      @cancel="toggleReg"
    >      
    <div class="box">
        <div class="box-part" id="bp-left">
          <div class="partition" id="partition-register">
            <div class="partition-title">SIGNUP</div>
            
            <div class="partition-form">
              <form action="post">
                <input                    
                    type="text" 
                    name="name"
                    placeholder="Full Name" 
                    v-model="name"
                    @input="isValid"
                />   
                <div class="div-css" v-if="nameValid">
                    <i class="fa fa-exclamation-circle" aria-hidden="true"></i>
                    {{nameError}}
                </div>  
                <input                    
                    type="text" 
                    name="email"
                    placeholder="Email" 
                    v-model="emailid"
                    @input="isValid"
                />                  
                <div class="div-css" v-if="emailValid">
                    <i class="fa fa-exclamation-circle" aria-hidden="true"></i>
                    {{emailError}}
                </div>  
                <input                    
                    type="password" 
                    name="password"
                    placeholder="Password" 
                    v-model="password"
                    @input="isValid"
                />
                <div class="div-css" v-if="passValid">
                    <i class="fa fa-exclamation-circle" aria-hidden="true"></i>
                    {{passError}}
                </div>

                <button id="goto-signin-btn" @click="onRegister">Sign UP</button>
                <!-- <button id="register-btn">Login</button> -->
              </form>
            </div>
          </div>
        </div>
        <div class="box-part" id="bp-right">
          <div class="box-messages">
          </div>
        </div>
      </div> 
      
</a-modal>
</template>

<script>

const MODAL_WIDTH = 656
export default {
  name: 'register',
  props: ['toggleReg'],
  modalWidth: MODAL_WIDTH,

  created () {
    this.modalWidth = window.innerWidth < MODAL_WIDTH
      ? MODAL_WIDTH / 2
      : MODAL_WIDTH
  },

  data() {
    return {
      showModal: true,
      name: '',
      emailid: '',
      password: '',
      reg: /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/,
      nameError: '',
      emailError: '',
      passError: '',
      nameValid: false,
      emailValid: false,
      passValid: false,
      logError: ''
    }
  },

  computed: {
    authStore () {
      return this.$store.state.AuthenticationStore.errorMsg;
    }
  },

  methods: {
    
    // Form Validation
    isValid (event) {
      let name = event.target.name;
      let value = event.target.value;

      if(name==='email') {
        
        if (this.emailid === '') {
          this.emailError = 'Email-ID is required!';
          this.emailValid = true;
        }
        else if(!this.reg.test(this.emailid)) {
          this.emailError = 'Please Enter valid Email-ID!';
          this.emailValid = true;
        }
        else {
          this.emailError = '';
          this.emailValid = false;
        }
      }
      else if (name==='password') {
        if(this.password === '') {
          this.passError = 'Password is required!';
          this.passValid = true;
        }
        else if(!/^(?=.*[0-9])[a-zA-Z0-9!@#$%^&*]{6,}$/.test(this.password)) {
          this.passError = 'Password must contain atleast 6 characters with a Number!';
          this.passValid = true;
        }
        else {
          this.passError = '';
          this.passValid = false;
        }
      }
      else if(name==='name') {
          if(this.name === '') {
              this.nameError = 'Full name is required!';
              this.nameValid = true;
          }
          else if(!/^[a-zA-Z ]+$/.test(this.name)) {
              this.nameError = 'Only Alpha characters are allowed!';
              this.nameValid = true;
          }
          else {
              this.nameError = '';
              this.nameValid = false;
          }
      }
    },

    onRegister (event) {
      event.preventDefault();

      if (this.name === '' || this.emailid === '' || this.password === '') {
          if(this.name === '') {
            this.nameError = 'Name field is required!';
            this.nameValid = true;
          }
          if(this.emailid === '') {
            this.emailError = 'Email-ID is required!';
            this.emailValid = true;
          }
          if (this.password === '') {
            this.passError = 'Password is required!';
            this.passValid = true;
          }
      }
      else {
        if(this.nameValid === false && this.emailValid === false && this.passValid === false) {
          const user = {
            fullname: this.name,
            email: this.emailid,
            password: this.password
          }
          
          this.$store.dispatch('registerUser', user).then((response) => {
            this.toggleReg();
            this.$router.push('/');
            location.reload();
          })
          .catch(err => {
            this.$message.error(err);
          })
          
        }      
      } 
    }
  }
}
</script>

<style scoped>

.box {
  background: white;
  overflow: hidden;
  width: 475px;
  height: 490px;
  border-radius: 2px;
  box-sizing: border-box;
  border: #8b8c8d;
  /* box-shadow: 0 0 40px black; */
  color: #8b8c8d;
  font-size: 0;
}
.box-part {
  display: inline-block;
  position: relative;
  vertical-align: top;
  box-sizing: border-box;
  height: 100%;
  width: 50%;
}
#bp-right {
  background: url("../../assets/Untitled-signup.png") no-repeat top left;
  border-left: 1px solid #eee;
}
  
.box-messages {
  position: absolute;
  left: 0;
  bottom: 0;
  width: 100%;
}
.box-error-message {
  position: relative;
  overflow: hidden;
  box-sizing: border-box;
  height: 0;
  line-height: 32px;
  padding: 0 12px;
  text-align: center;
  width: 100%;
  font-size: 11px;
  color: white;
  background: #F38181;
}
.partition {
  width: 100%;
  height: 100%;
}
.partition-title {
  box-sizing: border-box;
  padding: 30px;
  width: 100%;
  text-align: center;
  letter-spacing: 1px;
  font-size: 20px;
  font-weight: 300;
}
.partition-form {
  padding: 0 20px;
  box-sizing: border-box;
}

input[type=password],
input[type=text] {
  display: block;
  box-sizing: border-box;
  margin-bottom: 4px;
  width: 100%;
  font-size: 12px;
  line-height: 2;
  border: 0;
  border-bottom: 1px solid #DDDEDF;
  padding: 4px 8px;
  font-family: inherit;
  transition: 0.5s all;
  outline: none;
}
.div-css {
  display: block;
  box-sizing: border-box;
  margin-bottom: 4px;
  width: 100%;
  font-size: 12px;
  /* line-height: 2; */
  border: 0;
  color: red;
  /* border-bottom: 1px solid #DDDEDF; */
  padding: 4px 8px;
  font-family: inherit;
  transition: 0.5s all;
  outline: none;
}
button {
  background: white;
  border-radius: 4px;
  box-sizing: border-box;
  padding: 15px;
  letter-spacing: 1px;
  font-family: "Open Sans", sans-serif;
  font-weight: 600;
  min-width: 140px;
  margin-top: 8px;
  color: #8b8c8d;
  cursor: pointer;
  border: 1px solid #DDDEDF;
  text-transform: uppercase;
  transition: 0.1s all;
  font-size: 10px;
  outline: none;
  background-color: #fb641b;
  font-size: 15px;
  color: white;
  box-shadow: 0 4px 6px 0 rgba(0,0,0,.12);
  width: 100%;
}
button :hover {
  border-color: mix(#DDDEDF, black, 90%);
  color: mix(#8b8c8d, black, 80%);
}

.large-btn {
  width: 100%;
  background: white;
}
span {
  font-weight: 600;
}
span :hover {
  color: white !important;
}

.button-set {
  margin-bottom: 8px;
}
#register-btn,
#signin-btn {
  /* margin-left: 8px; */
  border: none;
  /* padding: 15px; */
  line-height: 180%;
  text-align: center;
  color: #2874f0;
  background-color: #fff;
  margin-top: 16px;
  box-shadow: 0 4px 6px 0 rgba(0,0,0,.12);
  font-weight: 600;
  width: 100%;
  padding: 10px 20px;
}

.autocomplete-fix {
  position: absolute;
  visibility: hidden;
  overflow: hidden;
  opacity: 0;
  width: 0;
  height: 0;
  left: 0;
  top: 0;
}

.pop-out-enter-active,
.pop-out-leave-active {
  transition: all 0.5s;
}
.pop-out-enter,
.pop-out-leave-active {
  opacity: 0;
  transform: translateY(24px);
}

</style>