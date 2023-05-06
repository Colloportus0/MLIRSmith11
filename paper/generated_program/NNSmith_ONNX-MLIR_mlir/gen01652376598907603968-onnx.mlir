module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2] , \22name\22 : \22v6_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 2 , 1] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 2 , 2] , \22name\22 : \22v3_0\22 }\0A ,    { \22type\22 : \22i64\22 , \22dims\22 : [1 , 1 , 2 , 2] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.func @omTensorListGetSize(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorPrint(!llvm.ptr<i8>, !llvm.ptr<i8>)
  llvm.func @omTensorListGetOmtArray(!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
  llvm.func @omTensorSetDataType(!llvm.ptr<i8>, i64)
  llvm.func @omTensorGetDataType(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorGetStrides(!llvm.ptr<i8>) -> !llvm.ptr<i64>
  llvm.func @omTensorGetShape(!llvm.ptr<i8>) -> !llvm.ptr<i64>
  llvm.func @omTensorGetRank(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorSetDataPtr(!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>)
  llvm.func @omTensorGetDataPtr(!llvm.ptr<i8>) -> !llvm.ptr<i8>
  llvm.func @omTensorCreateUntyped(i64) -> !llvm.ptr<i8>
  llvm.func @omTensorListCreate(!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  llvm.mlir.global internal constant @constant_3(dense<[1, 1, 2, 2]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_2(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_1(dense<[1, 1, 2, 2]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: !llvm.ptr<i32>, %arg8: !llvm.ptr<i32>, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v6_0", "v1_0"], llvm.emit_c_interface, output_names = ["v3_0", "v0_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %5 = llvm.insertvalue %arg5, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %7 = llvm.insertvalue %arg6, %6[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %8 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %9 = llvm.insertvalue %arg7, %8[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.insertvalue %arg8, %9[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %arg9, %10[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.insertvalue %arg10, %11[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %13 = llvm.insertvalue %arg14, %12[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.insertvalue %arg11, %13[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %15 = llvm.insertvalue %arg15, %14[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.insertvalue %arg12, %15[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.insertvalue %arg16, %16[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.insertvalue %arg13, %17[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %19 = llvm.insertvalue %arg17, %18[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.mlir.constant(1 : i64) : i64
    %21 = llvm.mlir.constant(0 : index) : i64
    %22 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<4 x i64>>
    %23 = llvm.bitcast %22 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %24 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %25 = llvm.insertvalue %23, %24[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %26 = llvm.insertvalue %23, %25[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %27 = llvm.mlir.constant(0 : index) : i64
    %28 = llvm.insertvalue %27, %26[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %29 = llvm.mlir.constant(4 : index) : i64
    %30 = llvm.insertvalue %29, %28[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %31 = llvm.mlir.constant(1 : index) : i64
    %32 = llvm.insertvalue %31, %30[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %33 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x i64>>
    %34 = llvm.bitcast %33 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %35 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %36 = llvm.insertvalue %34, %35[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %37 = llvm.insertvalue %34, %36[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %38 = llvm.mlir.constant(0 : index) : i64
    %39 = llvm.insertvalue %38, %37[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %40 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<4 x i64>>
    %41 = llvm.bitcast %40 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %42 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %43 = llvm.insertvalue %41, %42[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %44 = llvm.insertvalue %41, %43[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %45 = llvm.mlir.constant(0 : index) : i64
    %46 = llvm.insertvalue %45, %44[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %47 = llvm.mlir.constant(4 : index) : i64
    %48 = llvm.insertvalue %47, %46[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %49 = llvm.mlir.constant(1 : index) : i64
    %50 = llvm.insertvalue %49, %48[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %51 = llvm.mlir.constant(1 : index) : i64
    %52 = llvm.mlir.constant(1 : index) : i64
    %53 = llvm.mlir.constant(2 : index) : i64
    %54 = llvm.mlir.constant(2 : index) : i64
    %55 = llvm.mlir.constant(1 : index) : i64
    %56 = llvm.mlir.constant(4 : index) : i64
    %57 = llvm.mlir.constant(4 : index) : i64
    %58 = llvm.mlir.constant(4 : index) : i64
    %59 = llvm.mlir.null : !llvm.ptr<i32>
    %60 = llvm.getelementptr %59[%58] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %61 = llvm.ptrtoint %60 : !llvm.ptr<i32> to i64
    %62 = llvm.mlir.constant(16 : index) : i64
    %63 = llvm.add %61, %62  : i64
    %64 = llvm.call @malloc(%63) : (i64) -> !llvm.ptr<i8>
    %65 = llvm.bitcast %64 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %66 = llvm.ptrtoint %65 : !llvm.ptr<i32> to i64
    %67 = llvm.mlir.constant(1 : index) : i64
    %68 = llvm.sub %62, %67  : i64
    %69 = llvm.add %66, %68  : i64
    %70 = llvm.urem %69, %62  : i64
    %71 = llvm.sub %69, %70  : i64
    %72 = llvm.inttoptr %71 : i64 to !llvm.ptr<i32>
    %73 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %74 = llvm.insertvalue %65, %73[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.insertvalue %72, %74[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.mlir.constant(0 : index) : i64
    %77 = llvm.insertvalue %76, %75[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.insertvalue %51, %77[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.insertvalue %52, %78[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.insertvalue %53, %79[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %81 = llvm.insertvalue %54, %80[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.insertvalue %57, %81[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %83 = llvm.insertvalue %56, %82[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %84 = llvm.insertvalue %54, %83[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %85 = llvm.insertvalue %55, %84[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %86 = llvm.mlir.constant(0 : index) : i64
    %87 = llvm.mlir.constant(1 : index) : i64
    %88 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%86 : i64)
  ^bb1(%89: i64):  // 2 preds: ^bb0, ^bb11
    %90 = llvm.icmp "slt" %89, %87 : i64
    llvm.cond_br %90, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %91 = llvm.mlir.constant(0 : index) : i64
    %92 = llvm.mlir.constant(1 : index) : i64
    %93 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%91 : i64)
  ^bb3(%94: i64):  // 2 preds: ^bb2, ^bb10
    %95 = llvm.icmp "slt" %94, %92 : i64
    llvm.cond_br %95, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %96 = llvm.mlir.constant(0 : index) : i64
    %97 = llvm.mlir.constant(2 : index) : i64
    %98 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%96 : i64)
  ^bb5(%99: i64):  // 2 preds: ^bb4, ^bb9
    %100 = llvm.icmp "slt" %99, %97 : i64
    llvm.cond_br %100, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %101 = llvm.mlir.constant(0 : index) : i64
    %102 = llvm.mlir.constant(2 : index) : i64
    %103 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%101 : i64)
  ^bb7(%104: i64):  // 2 preds: ^bb6, ^bb8
    %105 = llvm.icmp "slt" %104, %102 : i64
    llvm.cond_br %105, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %106 = llvm.extractvalue %19[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.mlir.constant(2 : index) : i64
    %108 = llvm.mul %89, %107  : i64
    %109 = llvm.mlir.constant(2 : index) : i64
    %110 = llvm.mul %94, %109  : i64
    %111 = llvm.add %108, %110  : i64
    %112 = llvm.add %111, %99  : i64
    %113 = llvm.add %112, %21  : i64
    %114 = llvm.getelementptr %106[%113] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %115 = llvm.load %114 : !llvm.ptr<i32>
    %116 = llvm.extractvalue %7[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %117 = llvm.mlir.constant(2 : index) : i64
    %118 = llvm.mul %21, %117  : i64
    %119 = llvm.add %118, %104  : i64
    %120 = llvm.getelementptr %116[%119] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %121 = llvm.load %120 : !llvm.ptr<i32>
    %122 = llvm.mul %115, %121  : i32
    %123 = llvm.extractvalue %85[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %124 = llvm.mlir.constant(4 : index) : i64
    %125 = llvm.mul %89, %124  : i64
    %126 = llvm.mlir.constant(4 : index) : i64
    %127 = llvm.mul %94, %126  : i64
    %128 = llvm.add %125, %127  : i64
    %129 = llvm.mlir.constant(2 : index) : i64
    %130 = llvm.mul %99, %129  : i64
    %131 = llvm.add %128, %130  : i64
    %132 = llvm.add %131, %104  : i64
    %133 = llvm.getelementptr %123[%132] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %122, %133 : !llvm.ptr<i32>
    %134 = llvm.add %104, %103  : i64
    llvm.br ^bb7(%134 : i64)
  ^bb9:  // pred: ^bb7
    %135 = llvm.add %99, %98  : i64
    llvm.br ^bb5(%135 : i64)
  ^bb10:  // pred: ^bb5
    %136 = llvm.add %94, %93  : i64
    llvm.br ^bb3(%136 : i64)
  ^bb11:  // pred: ^bb3
    %137 = llvm.add %89, %88  : i64
    llvm.br ^bb1(%137 : i64)
  ^bb12:  // pred: ^bb1
    %138 = llvm.mlir.constant(4 : index) : i64
    %139 = llvm.mlir.constant(1 : index) : i64
    %140 = llvm.mlir.null : !llvm.ptr<i64>
    %141 = llvm.getelementptr %140[%138] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %142 = llvm.ptrtoint %141 : !llvm.ptr<i64> to i64
    %143 = llvm.mlir.constant(16 : index) : i64
    %144 = llvm.add %142, %143  : i64
    %145 = llvm.call @malloc(%144) : (i64) -> !llvm.ptr<i8>
    %146 = llvm.bitcast %145 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %147 = llvm.ptrtoint %146 : !llvm.ptr<i64> to i64
    %148 = llvm.mlir.constant(1 : index) : i64
    %149 = llvm.sub %143, %148  : i64
    %150 = llvm.add %147, %149  : i64
    %151 = llvm.urem %150, %143  : i64
    %152 = llvm.sub %150, %151  : i64
    %153 = llvm.inttoptr %152 : i64 to !llvm.ptr<i64>
    %154 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %155 = llvm.insertvalue %146, %154[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %156 = llvm.insertvalue %153, %155[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %157 = llvm.mlir.constant(0 : index) : i64
    %158 = llvm.insertvalue %157, %156[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %159 = llvm.insertvalue %138, %158[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %160 = llvm.insertvalue %139, %159[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %161 = llvm.mlir.constant(0 : index) : i64
    %162 = llvm.mlir.constant(4 : index) : i64
    %163 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%161 : i64)
  ^bb13(%164: i64):  // 2 preds: ^bb12, ^bb14
    %165 = llvm.icmp "slt" %164, %162 : i64
    llvm.cond_br %165, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %166 = llvm.extractvalue %160[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %167 = llvm.getelementptr %166[%164] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %20, %167 : !llvm.ptr<i64>
    %168 = llvm.add %164, %163  : i64
    llvm.br ^bb13(%168 : i64)
  ^bb15:  // pred: ^bb13
    %169 = llvm.mlir.constant(4 : index) : i64
    %170 = llvm.mlir.constant(1 : index) : i64
    %171 = llvm.mlir.null : !llvm.ptr<i64>
    %172 = llvm.getelementptr %171[%169] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %173 = llvm.ptrtoint %172 : !llvm.ptr<i64> to i64
    %174 = llvm.mlir.constant(16 : index) : i64
    %175 = llvm.add %173, %174  : i64
    %176 = llvm.call @malloc(%175) : (i64) -> !llvm.ptr<i8>
    %177 = llvm.bitcast %176 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %178 = llvm.ptrtoint %177 : !llvm.ptr<i64> to i64
    %179 = llvm.mlir.constant(1 : index) : i64
    %180 = llvm.sub %174, %179  : i64
    %181 = llvm.add %178, %180  : i64
    %182 = llvm.urem %181, %174  : i64
    %183 = llvm.sub %181, %182  : i64
    %184 = llvm.inttoptr %183 : i64 to !llvm.ptr<i64>
    %185 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %186 = llvm.insertvalue %177, %185[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %187 = llvm.insertvalue %184, %186[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %188 = llvm.mlir.constant(0 : index) : i64
    %189 = llvm.insertvalue %188, %187[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %190 = llvm.insertvalue %169, %189[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %191 = llvm.insertvalue %170, %190[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %192 = llvm.mlir.constant(0 : index) : i64
    %193 = llvm.mlir.constant(4 : index) : i64
    %194 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%192 : i64)
  ^bb16(%195: i64):  // 2 preds: ^bb15, ^bb17
    %196 = llvm.icmp "slt" %195, %193 : i64
    llvm.cond_br %196, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %197 = llvm.extractvalue %160[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %198 = llvm.getelementptr %197[%195] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %199 = llvm.load %198 : !llvm.ptr<i64>
    %200 = llvm.extractvalue %39[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %201 = llvm.load %200 : !llvm.ptr<i64>
    %202 = llvm.mul %199, %201  : i64
    %203 = llvm.extractvalue %191[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %204 = llvm.getelementptr %203[%195] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %202, %204 : !llvm.ptr<i64>
    %205 = llvm.add %195, %194  : i64
    llvm.br ^bb16(%205 : i64)
  ^bb18:  // pred: ^bb16
    %206 = llvm.mlir.constant(4 : index) : i64
    %207 = llvm.mlir.constant(1 : index) : i64
    %208 = llvm.mlir.null : !llvm.ptr<i1>
    %209 = llvm.getelementptr %208[%206] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %210 = llvm.ptrtoint %209 : !llvm.ptr<i1> to i64
    %211 = llvm.mlir.constant(16 : index) : i64
    %212 = llvm.add %210, %211  : i64
    %213 = llvm.call @malloc(%212) : (i64) -> !llvm.ptr<i8>
    %214 = llvm.bitcast %213 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %215 = llvm.ptrtoint %214 : !llvm.ptr<i1> to i64
    %216 = llvm.mlir.constant(1 : index) : i64
    %217 = llvm.sub %211, %216  : i64
    %218 = llvm.add %215, %217  : i64
    %219 = llvm.urem %218, %211  : i64
    %220 = llvm.sub %218, %219  : i64
    %221 = llvm.inttoptr %220 : i64 to !llvm.ptr<i1>
    %222 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %223 = llvm.insertvalue %214, %222[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %224 = llvm.insertvalue %221, %223[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %225 = llvm.mlir.constant(0 : index) : i64
    %226 = llvm.insertvalue %225, %224[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %227 = llvm.insertvalue %206, %226[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %228 = llvm.insertvalue %207, %227[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %229 = llvm.mlir.constant(0 : index) : i64
    %230 = llvm.mlir.constant(4 : index) : i64
    %231 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%229 : i64)
  ^bb19(%232: i64):  // 2 preds: ^bb18, ^bb20
    %233 = llvm.icmp "slt" %232, %230 : i64
    llvm.cond_br %233, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %234 = llvm.extractvalue %32[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %235 = llvm.getelementptr %234[%232] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %236 = llvm.load %235 : !llvm.ptr<i64>
    %237 = llvm.extractvalue %191[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %238 = llvm.getelementptr %237[%232] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %239 = llvm.load %238 : !llvm.ptr<i64>
    %240 = llvm.icmp "eq" %236, %239 : i64
    %241 = llvm.extractvalue %228[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %242 = llvm.getelementptr %241[%232] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %240, %242 : !llvm.ptr<i1>
    %243 = llvm.add %232, %231  : i64
    llvm.br ^bb19(%243 : i64)
  ^bb21:  // pred: ^bb19
    %244 = llvm.mlir.constant(4 : index) : i64
    %245 = llvm.mlir.constant(1 : index) : i64
    %246 = llvm.mlir.null : !llvm.ptr<i64>
    %247 = llvm.getelementptr %246[%244] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %248 = llvm.ptrtoint %247 : !llvm.ptr<i64> to i64
    %249 = llvm.mlir.constant(16 : index) : i64
    %250 = llvm.add %248, %249  : i64
    %251 = llvm.call @malloc(%250) : (i64) -> !llvm.ptr<i8>
    %252 = llvm.bitcast %251 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %253 = llvm.ptrtoint %252 : !llvm.ptr<i64> to i64
    %254 = llvm.mlir.constant(1 : index) : i64
    %255 = llvm.sub %249, %254  : i64
    %256 = llvm.add %253, %255  : i64
    %257 = llvm.urem %256, %249  : i64
    %258 = llvm.sub %256, %257  : i64
    %259 = llvm.inttoptr %258 : i64 to !llvm.ptr<i64>
    %260 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %261 = llvm.insertvalue %252, %260[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %262 = llvm.insertvalue %259, %261[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %263 = llvm.mlir.constant(0 : index) : i64
    %264 = llvm.insertvalue %263, %262[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %265 = llvm.insertvalue %244, %264[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %266 = llvm.insertvalue %245, %265[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %267 = llvm.mlir.constant(0 : index) : i64
    %268 = llvm.mlir.constant(4 : index) : i64
    %269 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%267 : i64)
  ^bb22(%270: i64):  // 2 preds: ^bb21, ^bb23
    %271 = llvm.icmp "slt" %270, %268 : i64
    llvm.cond_br %271, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %272 = llvm.extractvalue %228[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %273 = llvm.getelementptr %272[%270] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %274 = llvm.load %273 : !llvm.ptr<i1>
    %275 = llvm.extractvalue %160[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %276 = llvm.getelementptr %275[%270] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %277 = llvm.load %276 : !llvm.ptr<i64>
    %278 = llvm.extractvalue %50[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %279 = llvm.getelementptr %278[%270] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %280 = llvm.load %279 : !llvm.ptr<i64>
    %281 = llvm.select %274, %277, %280 : i1, i64
    %282 = llvm.extractvalue %266[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %283 = llvm.getelementptr %282[%270] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %281, %283 : !llvm.ptr<i64>
    %284 = llvm.add %270, %269  : i64
    llvm.br ^bb22(%284 : i64)
  ^bb24:  // pred: ^bb22
    %285 = llvm.mlir.constant(1 : index) : i64
    %286 = llvm.mlir.constant(1 : index) : i64
    %287 = llvm.mlir.constant(2 : index) : i64
    %288 = llvm.mlir.constant(2 : index) : i64
    %289 = llvm.mlir.constant(1 : index) : i64
    %290 = llvm.mlir.constant(4 : index) : i64
    %291 = llvm.mlir.constant(4 : index) : i64
    %292 = llvm.mlir.constant(4 : index) : i64
    %293 = llvm.mlir.null : !llvm.ptr<i32>
    %294 = llvm.getelementptr %293[%292] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %295 = llvm.ptrtoint %294 : !llvm.ptr<i32> to i64
    %296 = llvm.mlir.constant(16 : index) : i64
    %297 = llvm.add %295, %296  : i64
    %298 = llvm.call @malloc(%297) : (i64) -> !llvm.ptr<i8>
    %299 = llvm.bitcast %298 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %300 = llvm.ptrtoint %299 : !llvm.ptr<i32> to i64
    %301 = llvm.mlir.constant(1 : index) : i64
    %302 = llvm.sub %296, %301  : i64
    %303 = llvm.add %300, %302  : i64
    %304 = llvm.urem %303, %296  : i64
    %305 = llvm.sub %303, %304  : i64
    %306 = llvm.inttoptr %305 : i64 to !llvm.ptr<i32>
    %307 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %308 = llvm.insertvalue %299, %307[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %309 = llvm.insertvalue %306, %308[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %310 = llvm.mlir.constant(0 : index) : i64
    %311 = llvm.insertvalue %310, %309[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %312 = llvm.insertvalue %285, %311[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %313 = llvm.insertvalue %286, %312[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %314 = llvm.insertvalue %287, %313[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %315 = llvm.insertvalue %288, %314[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %316 = llvm.insertvalue %291, %315[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %317 = llvm.insertvalue %290, %316[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %318 = llvm.insertvalue %288, %317[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %319 = llvm.insertvalue %289, %318[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %320 = llvm.mlir.constant(0 : index) : i64
    %321 = llvm.mlir.constant(1 : index) : i64
    %322 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%320 : i64)
  ^bb25(%323: i64):  // 2 preds: ^bb24, ^bb35
    %324 = llvm.icmp "slt" %323, %321 : i64
    llvm.cond_br %324, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %325 = llvm.mlir.constant(0 : index) : i64
    %326 = llvm.mlir.constant(1 : index) : i64
    %327 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%325 : i64)
  ^bb27(%328: i64):  // 2 preds: ^bb26, ^bb34
    %329 = llvm.icmp "slt" %328, %326 : i64
    llvm.cond_br %329, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %330 = llvm.mlir.constant(0 : index) : i64
    %331 = llvm.mlir.constant(2 : index) : i64
    %332 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%330 : i64)
  ^bb29(%333: i64):  // 2 preds: ^bb28, ^bb33
    %334 = llvm.icmp "slt" %333, %331 : i64
    llvm.cond_br %334, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %335 = llvm.mlir.constant(0 : index) : i64
    %336 = llvm.mlir.constant(2 : index) : i64
    %337 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%335 : i64)
  ^bb31(%338: i64):  // 2 preds: ^bb30, ^bb32
    %339 = llvm.icmp "slt" %338, %336 : i64
    llvm.cond_br %339, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %340 = llvm.extractvalue %85[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %341 = llvm.mlir.constant(4 : index) : i64
    %342 = llvm.mul %21, %341  : i64
    %343 = llvm.mlir.constant(4 : index) : i64
    %344 = llvm.mul %21, %343  : i64
    %345 = llvm.add %342, %344  : i64
    %346 = llvm.mlir.constant(2 : index) : i64
    %347 = llvm.mul %333, %346  : i64
    %348 = llvm.add %345, %347  : i64
    %349 = llvm.add %348, %338  : i64
    %350 = llvm.getelementptr %340[%349] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %351 = llvm.load %350 : !llvm.ptr<i32>
    %352 = llvm.extractvalue %319[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %353 = llvm.mlir.constant(4 : index) : i64
    %354 = llvm.mul %323, %353  : i64
    %355 = llvm.mlir.constant(4 : index) : i64
    %356 = llvm.mul %328, %355  : i64
    %357 = llvm.add %354, %356  : i64
    %358 = llvm.mlir.constant(2 : index) : i64
    %359 = llvm.mul %333, %358  : i64
    %360 = llvm.add %357, %359  : i64
    %361 = llvm.add %360, %338  : i64
    %362 = llvm.getelementptr %352[%361] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %351, %362 : !llvm.ptr<i32>
    %363 = llvm.add %338, %337  : i64
    llvm.br ^bb31(%363 : i64)
  ^bb33:  // pred: ^bb31
    %364 = llvm.add %333, %332  : i64
    llvm.br ^bb29(%364 : i64)
  ^bb34:  // pred: ^bb29
    %365 = llvm.add %328, %327  : i64
    llvm.br ^bb27(%365 : i64)
  ^bb35:  // pred: ^bb27
    %366 = llvm.add %323, %322  : i64
    llvm.br ^bb25(%366 : i64)
  ^bb36:  // pred: ^bb25
    %367 = llvm.mlir.constant(1 : index) : i64
    %368 = llvm.mlir.constant(1 : index) : i64
    %369 = llvm.mlir.constant(2 : index) : i64
    %370 = llvm.mlir.constant(2 : index) : i64
    %371 = llvm.mlir.constant(1 : index) : i64
    %372 = llvm.mlir.constant(4 : index) : i64
    %373 = llvm.mlir.constant(4 : index) : i64
    %374 = llvm.mlir.constant(4 : index) : i64
    %375 = llvm.mlir.null : !llvm.ptr<i32>
    %376 = llvm.getelementptr %375[%374] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %377 = llvm.ptrtoint %376 : !llvm.ptr<i32> to i64
    %378 = llvm.mlir.constant(16 : index) : i64
    %379 = llvm.add %377, %378  : i64
    %380 = llvm.call @malloc(%379) : (i64) -> !llvm.ptr<i8>
    %381 = llvm.bitcast %380 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %382 = llvm.ptrtoint %381 : !llvm.ptr<i32> to i64
    %383 = llvm.mlir.constant(1 : index) : i64
    %384 = llvm.sub %378, %383  : i64
    %385 = llvm.add %382, %384  : i64
    %386 = llvm.urem %385, %378  : i64
    %387 = llvm.sub %385, %386  : i64
    %388 = llvm.inttoptr %387 : i64 to !llvm.ptr<i32>
    %389 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %390 = llvm.insertvalue %381, %389[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %391 = llvm.insertvalue %388, %390[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %392 = llvm.mlir.constant(0 : index) : i64
    %393 = llvm.insertvalue %392, %391[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %394 = llvm.insertvalue %367, %393[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %395 = llvm.insertvalue %368, %394[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %396 = llvm.insertvalue %369, %395[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %397 = llvm.insertvalue %370, %396[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %398 = llvm.insertvalue %373, %397[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %399 = llvm.insertvalue %372, %398[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %400 = llvm.insertvalue %370, %399[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %401 = llvm.insertvalue %371, %400[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %402 = llvm.mlir.constant(0 : index) : i64
    %403 = llvm.mlir.constant(1 : index) : i64
    %404 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%402 : i64)
  ^bb37(%405: i64):  // 2 preds: ^bb36, ^bb47
    %406 = llvm.icmp "slt" %405, %403 : i64
    llvm.cond_br %406, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %407 = llvm.mlir.constant(0 : index) : i64
    %408 = llvm.mlir.constant(1 : index) : i64
    %409 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%407 : i64)
  ^bb39(%410: i64):  // 2 preds: ^bb38, ^bb46
    %411 = llvm.icmp "slt" %410, %408 : i64
    llvm.cond_br %411, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %412 = llvm.mlir.constant(0 : index) : i64
    %413 = llvm.mlir.constant(2 : index) : i64
    %414 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%412 : i64)
  ^bb41(%415: i64):  // 2 preds: ^bb40, ^bb45
    %416 = llvm.icmp "slt" %415, %413 : i64
    llvm.cond_br %416, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %417 = llvm.mlir.constant(0 : index) : i64
    %418 = llvm.mlir.constant(2 : index) : i64
    %419 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%417 : i64)
  ^bb43(%420: i64):  // 2 preds: ^bb42, ^bb44
    %421 = llvm.icmp "slt" %420, %418 : i64
    llvm.cond_br %421, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %422 = llvm.extractvalue %85[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %423 = llvm.mlir.constant(4 : index) : i64
    %424 = llvm.mul %405, %423  : i64
    %425 = llvm.mlir.constant(4 : index) : i64
    %426 = llvm.mul %410, %425  : i64
    %427 = llvm.add %424, %426  : i64
    %428 = llvm.mlir.constant(2 : index) : i64
    %429 = llvm.mul %415, %428  : i64
    %430 = llvm.add %427, %429  : i64
    %431 = llvm.add %430, %420  : i64
    %432 = llvm.getelementptr %422[%431] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %433 = llvm.load %432 : !llvm.ptr<i32>
    %434 = llvm.extractvalue %401[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %435 = llvm.mlir.constant(4 : index) : i64
    %436 = llvm.mul %405, %435  : i64
    %437 = llvm.mlir.constant(4 : index) : i64
    %438 = llvm.mul %410, %437  : i64
    %439 = llvm.add %436, %438  : i64
    %440 = llvm.mlir.constant(2 : index) : i64
    %441 = llvm.mul %415, %440  : i64
    %442 = llvm.add %439, %441  : i64
    %443 = llvm.add %442, %420  : i64
    %444 = llvm.getelementptr %434[%443] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %433, %444 : !llvm.ptr<i32>
    %445 = llvm.add %420, %419  : i64
    llvm.br ^bb43(%445 : i64)
  ^bb45:  // pred: ^bb43
    %446 = llvm.add %415, %414  : i64
    llvm.br ^bb41(%446 : i64)
  ^bb46:  // pred: ^bb41
    %447 = llvm.add %410, %409  : i64
    llvm.br ^bb39(%447 : i64)
  ^bb47:  // pred: ^bb39
    %448 = llvm.add %405, %404  : i64
    llvm.br ^bb37(%448 : i64)
  ^bb48:  // pred: ^bb37
    %449 = llvm.mlir.constant(1 : index) : i64
    %450 = llvm.mlir.constant(1 : index) : i64
    %451 = llvm.mlir.constant(2 : index) : i64
    %452 = llvm.mlir.constant(2 : index) : i64
    %453 = llvm.mlir.constant(1 : index) : i64
    %454 = llvm.mlir.constant(4 : index) : i64
    %455 = llvm.mlir.constant(4 : index) : i64
    %456 = llvm.mlir.constant(4 : index) : i64
    %457 = llvm.mlir.null : !llvm.ptr<i64>
    %458 = llvm.getelementptr %457[%456] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %459 = llvm.ptrtoint %458 : !llvm.ptr<i64> to i64
    %460 = llvm.mlir.constant(16 : index) : i64
    %461 = llvm.add %459, %460  : i64
    %462 = llvm.call @malloc(%461) : (i64) -> !llvm.ptr<i8>
    %463 = llvm.bitcast %462 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %464 = llvm.ptrtoint %463 : !llvm.ptr<i64> to i64
    %465 = llvm.mlir.constant(1 : index) : i64
    %466 = llvm.sub %460, %465  : i64
    %467 = llvm.add %464, %466  : i64
    %468 = llvm.urem %467, %460  : i64
    %469 = llvm.sub %467, %468  : i64
    %470 = llvm.inttoptr %469 : i64 to !llvm.ptr<i64>
    %471 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>
    %472 = llvm.insertvalue %463, %471[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %473 = llvm.insertvalue %470, %472[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %474 = llvm.mlir.constant(0 : index) : i64
    %475 = llvm.insertvalue %474, %473[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %476 = llvm.insertvalue %449, %475[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %477 = llvm.insertvalue %450, %476[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %478 = llvm.insertvalue %451, %477[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %479 = llvm.insertvalue %452, %478[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %480 = llvm.insertvalue %455, %479[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %481 = llvm.insertvalue %454, %480[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %482 = llvm.insertvalue %452, %481[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %483 = llvm.insertvalue %453, %482[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %484 = llvm.mlir.constant(0 : index) : i64
    %485 = llvm.mlir.constant(1 : index) : i64
    %486 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%484 : i64)
  ^bb49(%487: i64):  // 2 preds: ^bb48, ^bb59
    %488 = llvm.icmp "slt" %487, %485 : i64
    llvm.cond_br %488, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %489 = llvm.mlir.constant(0 : index) : i64
    %490 = llvm.mlir.constant(1 : index) : i64
    %491 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%489 : i64)
  ^bb51(%492: i64):  // 2 preds: ^bb50, ^bb58
    %493 = llvm.icmp "slt" %492, %490 : i64
    llvm.cond_br %493, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %494 = llvm.mlir.constant(0 : index) : i64
    %495 = llvm.mlir.constant(2 : index) : i64
    %496 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%494 : i64)
  ^bb53(%497: i64):  // 2 preds: ^bb52, ^bb57
    %498 = llvm.icmp "slt" %497, %495 : i64
    llvm.cond_br %498, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %499 = llvm.mlir.constant(0 : index) : i64
    %500 = llvm.mlir.constant(2 : index) : i64
    %501 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%499 : i64)
  ^bb55(%502: i64):  // 2 preds: ^bb54, ^bb56
    %503 = llvm.icmp "slt" %502, %500 : i64
    llvm.cond_br %503, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %504 = llvm.extractvalue %401[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %505 = llvm.mlir.constant(4 : index) : i64
    %506 = llvm.mul %487, %505  : i64
    %507 = llvm.mlir.constant(4 : index) : i64
    %508 = llvm.mul %492, %507  : i64
    %509 = llvm.add %506, %508  : i64
    %510 = llvm.mlir.constant(2 : index) : i64
    %511 = llvm.mul %497, %510  : i64
    %512 = llvm.add %509, %511  : i64
    %513 = llvm.add %512, %502  : i64
    %514 = llvm.getelementptr %504[%513] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %515 = llvm.load %514 : !llvm.ptr<i32>
    %516 = llvm.sext %515 : i32 to i64
    %517 = llvm.extractvalue %483[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %518 = llvm.mlir.constant(4 : index) : i64
    %519 = llvm.mul %487, %518  : i64
    %520 = llvm.mlir.constant(4 : index) : i64
    %521 = llvm.mul %492, %520  : i64
    %522 = llvm.add %519, %521  : i64
    %523 = llvm.mlir.constant(2 : index) : i64
    %524 = llvm.mul %497, %523  : i64
    %525 = llvm.add %522, %524  : i64
    %526 = llvm.add %525, %502  : i64
    %527 = llvm.getelementptr %517[%526] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %516, %527 : !llvm.ptr<i64>
    %528 = llvm.add %502, %501  : i64
    llvm.br ^bb55(%528 : i64)
  ^bb57:  // pred: ^bb55
    %529 = llvm.add %497, %496  : i64
    llvm.br ^bb53(%529 : i64)
  ^bb58:  // pred: ^bb53
    %530 = llvm.add %492, %491  : i64
    llvm.br ^bb51(%530 : i64)
  ^bb59:  // pred: ^bb51
    %531 = llvm.add %487, %486  : i64
    llvm.br ^bb49(%531 : i64)
  ^bb60:  // pred: ^bb49
    %532 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>
    %533 = llvm.insertvalue %319, %532[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %534 = llvm.insertvalue %483, %533[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %534 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v6_0", "v1_0"], llvm.emit_c_interface, output_names = ["v3_0", "v0_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %6 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %7 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %8 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %9 = llvm.extractvalue %8[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.extractvalue %8[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.extractvalue %8[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.extractvalue %8[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %13 = llvm.extractvalue %8[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.extractvalue %8[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %15 = llvm.extractvalue %8[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.extractvalue %8[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.extractvalue %8[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.extractvalue %8[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %19 = llvm.extractvalue %8[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %9, %10, %11, %12, %13, %14, %15, %16, %17, %18, %19) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %20, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %14[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %25 = llvm.load %24 : !llvm.ptr<i64>
    %26 = llvm.insertvalue %25, %22[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %27 = llvm.getelementptr %15[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %28 = llvm.load %27 : !llvm.ptr<i64>
    %29 = llvm.insertvalue %28, %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.store %29, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %30 = llvm.mlir.constant(1 : i64) : i64
    %31 = llvm.getelementptr %0[%30] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %32 = llvm.load %31 : !llvm.ptr<ptr<i8>>
    %33 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %34 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %35 = llvm.call @omTensorGetDataPtr(%32) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %36 = llvm.bitcast %35 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %37 = llvm.insertvalue %36, %34[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %38 = llvm.insertvalue %36, %37[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %39 = llvm.mlir.constant(0 : i64) : i64
    %40 = llvm.insertvalue %39, %38[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.call @omTensorGetShape(%32) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %42 = llvm.call @omTensorGetStrides(%32) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %43 = llvm.mlir.constant(0 : i64) : i64
    %44 = llvm.getelementptr %41[%43] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %45 = llvm.load %44 : !llvm.ptr<i64>
    %46 = llvm.insertvalue %45, %40[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %47 = llvm.getelementptr %42[%43] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %48 = llvm.load %47 : !llvm.ptr<i64>
    %49 = llvm.insertvalue %48, %46[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %50 = llvm.mlir.constant(1 : i64) : i64
    %51 = llvm.getelementptr %41[%50] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %52 = llvm.load %51 : !llvm.ptr<i64>
    %53 = llvm.insertvalue %52, %49[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %54 = llvm.getelementptr %42[%50] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %55 = llvm.load %54 : !llvm.ptr<i64>
    %56 = llvm.insertvalue %55, %53[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.mlir.constant(2 : i64) : i64
    %58 = llvm.getelementptr %41[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %59 = llvm.load %58 : !llvm.ptr<i64>
    %60 = llvm.insertvalue %59, %56[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.getelementptr %42[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %62 = llvm.load %61 : !llvm.ptr<i64>
    %63 = llvm.insertvalue %62, %60[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.mlir.constant(3 : i64) : i64
    %65 = llvm.getelementptr %41[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %66 = llvm.load %65 : !llvm.ptr<i64>
    %67 = llvm.insertvalue %66, %63[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.getelementptr %42[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %69 = llvm.load %68 : !llvm.ptr<i64>
    %70 = llvm.insertvalue %69, %67[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %70, %33 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %33) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %71 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %72 = llvm.extractvalue %71[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %73 = llvm.extractvalue %71[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %74 = llvm.mlir.constant(2 : i64) : i64
    %75 = llvm.mlir.constant(16 : i64) : i64
    %76 = llvm.call @malloc(%75) : (i64) -> !llvm.ptr<i8>
    %77 = llvm.bitcast %76 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %78 = llvm.mlir.constant(4 : i64) : i64
    %79 = llvm.call @omTensorCreateUntyped(%78) : (i64) -> !llvm.ptr<i8>
    %80 = llvm.mlir.constant(1 : i64) : i64
    %81 = llvm.extractvalue %72[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.bitcast %81 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %83 = llvm.extractvalue %72[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %84 = llvm.bitcast %83 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%79, %80, %82, %84) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %85 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%79, %85) : (!llvm.ptr<i8>, i64) -> ()
    %86 = llvm.call @omTensorGetShape(%79) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %87 = llvm.call @omTensorGetStrides(%79) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %88 = llvm.mlir.constant(0 : i64) : i64
    %89 = llvm.extractvalue %72[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %90 = llvm.getelementptr %86[%88] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %89, %90 : !llvm.ptr<i64>
    %91 = llvm.extractvalue %72[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %92 = llvm.getelementptr %87[%88] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %91, %92 : !llvm.ptr<i64>
    %93 = llvm.mlir.constant(1 : i64) : i64
    %94 = llvm.extractvalue %72[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.getelementptr %86[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %94, %95 : !llvm.ptr<i64>
    %96 = llvm.extractvalue %72[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.getelementptr %87[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %96, %97 : !llvm.ptr<i64>
    %98 = llvm.mlir.constant(2 : i64) : i64
    %99 = llvm.extractvalue %72[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.getelementptr %86[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %99, %100 : !llvm.ptr<i64>
    %101 = llvm.extractvalue %72[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.getelementptr %87[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %101, %102 : !llvm.ptr<i64>
    %103 = llvm.mlir.constant(3 : i64) : i64
    %104 = llvm.extractvalue %72[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.getelementptr %86[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %104, %105 : !llvm.ptr<i64>
    %106 = llvm.extractvalue %72[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.getelementptr %87[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %106, %107 : !llvm.ptr<i64>
    %108 = llvm.mlir.constant(0 : i64) : i64
    %109 = llvm.getelementptr %77[%108] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %79, %109 : !llvm.ptr<ptr<i8>>
    %110 = llvm.mlir.constant(4 : i64) : i64
    %111 = llvm.call @omTensorCreateUntyped(%110) : (i64) -> !llvm.ptr<i8>
    %112 = llvm.mlir.constant(1 : i64) : i64
    %113 = llvm.extractvalue %73[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %114 = llvm.bitcast %113 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %115 = llvm.extractvalue %73[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %116 = llvm.bitcast %115 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%111, %112, %114, %116) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %117 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%111, %117) : (!llvm.ptr<i8>, i64) -> ()
    %118 = llvm.call @omTensorGetShape(%111) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %119 = llvm.call @omTensorGetStrides(%111) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %120 = llvm.mlir.constant(0 : i64) : i64
    %121 = llvm.extractvalue %73[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %122 = llvm.getelementptr %118[%120] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %121, %122 : !llvm.ptr<i64>
    %123 = llvm.extractvalue %73[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %124 = llvm.getelementptr %119[%120] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %123, %124 : !llvm.ptr<i64>
    %125 = llvm.mlir.constant(1 : i64) : i64
    %126 = llvm.extractvalue %73[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %127 = llvm.getelementptr %118[%125] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %126, %127 : !llvm.ptr<i64>
    %128 = llvm.extractvalue %73[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %129 = llvm.getelementptr %119[%125] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %128, %129 : !llvm.ptr<i64>
    %130 = llvm.mlir.constant(2 : i64) : i64
    %131 = llvm.extractvalue %73[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %132 = llvm.getelementptr %118[%130] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %131, %132 : !llvm.ptr<i64>
    %133 = llvm.extractvalue %73[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %134 = llvm.getelementptr %119[%130] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %133, %134 : !llvm.ptr<i64>
    %135 = llvm.mlir.constant(3 : i64) : i64
    %136 = llvm.extractvalue %73[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %137 = llvm.getelementptr %118[%135] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %136, %137 : !llvm.ptr<i64>
    %138 = llvm.extractvalue %73[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %139 = llvm.getelementptr %119[%135] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %138, %139 : !llvm.ptr<i64>
    %140 = llvm.mlir.constant(1 : i64) : i64
    %141 = llvm.getelementptr %77[%140] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %111, %141 : !llvm.ptr<ptr<i8>>
    %142 = llvm.call @omTensorListCreate(%77, %74, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %142 : !llvm.ptr<i8>
  }
  llvm.mlir.global internal constant @_entry_point_arrays() {addr_space = 0 : i32} : !llvm.array<2 x ptr<i8>> {
    %0 = llvm.mlir.undef : !llvm.array<2 x ptr<i8>>
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.insertvalue %3, %0[0] : !llvm.array<2 x ptr<i8>> 
    %5 = llvm.mlir.null : !llvm.ptr<i8>
    %6 = llvm.insertvalue %5, %4[1] : !llvm.array<2 x ptr<i8>> 
    llvm.return %6 : !llvm.array<2 x ptr<i8>>
  }
  llvm.func @omQueryEntryPoints(%arg0: !llvm.ptr<i64>) -> !llvm.ptr<ptr<i8>> {
    %0 = llvm.mlir.null : !llvm.ptr<i64>
    %1 = llvm.icmp "ne" %arg0, %0 : !llvm.ptr<i64>
    llvm.cond_br %1, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %arg0[%2] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %4 = llvm.mlir.constant(1 : i64) : i64
    llvm.store %4, %3 : !llvm.ptr<i64>
    llvm.br ^bb2
  ^bb2:  // 2 preds: ^bb0, ^bb1
    %5 = llvm.mlir.addressof @_entry_point_arrays : !llvm.ptr<array<2 x ptr<i8>>>
    %6 = llvm.bitcast %5 : !llvm.ptr<array<2 x ptr<i8>>> to !llvm.ptr<ptr<i8>>
    llvm.return %6 : !llvm.ptr<ptr<i8>>
  }
  llvm.func @omInputSignature(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.mlir.constant(15 : i64) : i64
    %5 = llvm.call @strncmp(%arg0, %3, %4) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
    %6 = llvm.icmp "eq" %5, %0 : i32
    llvm.cond_br %6, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<134 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<134 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
  llvm.func @omOutputSignature(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.mlir.constant(15 : i64) : i64
    %5 = llvm.call @strncmp(%arg0, %3, %4) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
    %6 = llvm.icmp "eq" %5, %0 : i32
    llvm.cond_br %6, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<141 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<141 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

