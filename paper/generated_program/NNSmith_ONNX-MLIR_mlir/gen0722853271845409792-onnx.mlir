module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 1 , 2 , 2] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [2 , 1 , 2 , 2] , \22name\22 : \22v0_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 1 , 2 , 2] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_3(dense<[2, 1, 2, 2]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_2(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_1(dense<[2, 1, 2, 2]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<i32>, %arg12: !llvm.ptr<i32>, %arg13: i64, %arg14: i64, %arg15: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v5_0", "v2_0"], llvm.emit_c_interface, output_names = ["v0_0", "v1_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %5 = llvm.insertvalue %arg7, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %7 = llvm.insertvalue %arg8, %6[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.insertvalue %arg5, %7[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.insertvalue %arg9, %8[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.insertvalue %arg6, %9[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %arg10, %10[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %13 = llvm.insertvalue %arg11, %12[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %14 = llvm.insertvalue %arg12, %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %15 = llvm.insertvalue %arg13, %14[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %16 = llvm.insertvalue %arg14, %15[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %17 = llvm.insertvalue %arg15, %16[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %18 = llvm.mlir.constant(0 : i32) : i32
    %19 = llvm.mlir.constant(1 : i64) : i64
    %20 = llvm.mlir.constant(0 : index) : i64
    %21 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<4 x i64>>
    %22 = llvm.bitcast %21 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %23 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %24 = llvm.insertvalue %22, %23[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %25 = llvm.insertvalue %22, %24[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %26 = llvm.mlir.constant(0 : index) : i64
    %27 = llvm.insertvalue %26, %25[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %28 = llvm.mlir.constant(4 : index) : i64
    %29 = llvm.insertvalue %28, %27[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %30 = llvm.mlir.constant(1 : index) : i64
    %31 = llvm.insertvalue %30, %29[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %32 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x i64>>
    %33 = llvm.bitcast %32 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %34 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %35 = llvm.insertvalue %33, %34[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %36 = llvm.insertvalue %33, %35[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %37 = llvm.mlir.constant(0 : index) : i64
    %38 = llvm.insertvalue %37, %36[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %39 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<4 x i64>>
    %40 = llvm.bitcast %39 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %41 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %42 = llvm.insertvalue %40, %41[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %43 = llvm.insertvalue %40, %42[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %44 = llvm.mlir.constant(0 : index) : i64
    %45 = llvm.insertvalue %44, %43[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %46 = llvm.mlir.constant(4 : index) : i64
    %47 = llvm.insertvalue %46, %45[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %48 = llvm.mlir.constant(1 : index) : i64
    %49 = llvm.insertvalue %48, %47[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %50 = llvm.mlir.constant(2 : index) : i64
    %51 = llvm.mlir.constant(1 : index) : i64
    %52 = llvm.mlir.constant(2 : index) : i64
    %53 = llvm.mlir.constant(2 : index) : i64
    %54 = llvm.mlir.constant(1 : index) : i64
    %55 = llvm.mlir.constant(4 : index) : i64
    %56 = llvm.mlir.constant(4 : index) : i64
    %57 = llvm.mlir.constant(8 : index) : i64
    %58 = llvm.mlir.null : !llvm.ptr<i32>
    %59 = llvm.getelementptr %58[%57] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %60 = llvm.ptrtoint %59 : !llvm.ptr<i32> to i64
    %61 = llvm.mlir.constant(16 : index) : i64
    %62 = llvm.add %60, %61  : i64
    %63 = llvm.call @malloc(%62) : (i64) -> !llvm.ptr<i8>
    %64 = llvm.bitcast %63 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %65 = llvm.ptrtoint %64 : !llvm.ptr<i32> to i64
    %66 = llvm.mlir.constant(1 : index) : i64
    %67 = llvm.sub %61, %66  : i64
    %68 = llvm.add %65, %67  : i64
    %69 = llvm.urem %68, %61  : i64
    %70 = llvm.sub %68, %69  : i64
    %71 = llvm.inttoptr %70 : i64 to !llvm.ptr<i32>
    %72 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %73 = llvm.insertvalue %64, %72[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.insertvalue %71, %73[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.mlir.constant(0 : index) : i64
    %76 = llvm.insertvalue %75, %74[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %77 = llvm.insertvalue %50, %76[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.insertvalue %51, %77[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.insertvalue %52, %78[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.insertvalue %53, %79[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %81 = llvm.insertvalue %56, %80[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.insertvalue %55, %81[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %83 = llvm.insertvalue %53, %82[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %84 = llvm.insertvalue %54, %83[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %85 = llvm.mlir.constant(0 : index) : i64
    %86 = llvm.mlir.constant(2 : index) : i64
    %87 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%85 : i64)
  ^bb1(%88: i64):  // 2 preds: ^bb0, ^bb11
    %89 = llvm.icmp "slt" %88, %86 : i64
    llvm.cond_br %89, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %90 = llvm.mlir.constant(0 : index) : i64
    %91 = llvm.mlir.constant(1 : index) : i64
    %92 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%90 : i64)
  ^bb3(%93: i64):  // 2 preds: ^bb2, ^bb10
    %94 = llvm.icmp "slt" %93, %91 : i64
    llvm.cond_br %94, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %95 = llvm.mlir.constant(0 : index) : i64
    %96 = llvm.mlir.constant(2 : index) : i64
    %97 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%95 : i64)
  ^bb5(%98: i64):  // 2 preds: ^bb4, ^bb9
    %99 = llvm.icmp "slt" %98, %96 : i64
    llvm.cond_br %99, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %100 = llvm.mlir.constant(0 : index) : i64
    %101 = llvm.mlir.constant(2 : index) : i64
    %102 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%100 : i64)
  ^bb7(%103: i64):  // 2 preds: ^bb6, ^bb8
    %104 = llvm.icmp "slt" %103, %101 : i64
    llvm.cond_br %104, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %105 = llvm.extractvalue %17[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %106 = llvm.getelementptr %105[%103] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %107 = llvm.load %106 : !llvm.ptr<i32>
    %108 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.mlir.constant(4 : index) : i64
    %110 = llvm.mul %88, %109  : i64
    %111 = llvm.mlir.constant(4 : index) : i64
    %112 = llvm.mul %93, %111  : i64
    %113 = llvm.add %110, %112  : i64
    %114 = llvm.mlir.constant(2 : index) : i64
    %115 = llvm.mul %98, %114  : i64
    %116 = llvm.add %113, %115  : i64
    %117 = llvm.add %116, %103  : i64
    %118 = llvm.getelementptr %108[%117] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %119 = llvm.load %118 : !llvm.ptr<i32>
    %120 = llvm.add %107, %119  : i32
    %121 = llvm.extractvalue %84[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %122 = llvm.mlir.constant(4 : index) : i64
    %123 = llvm.mul %88, %122  : i64
    %124 = llvm.mlir.constant(4 : index) : i64
    %125 = llvm.mul %93, %124  : i64
    %126 = llvm.add %123, %125  : i64
    %127 = llvm.mlir.constant(2 : index) : i64
    %128 = llvm.mul %98, %127  : i64
    %129 = llvm.add %126, %128  : i64
    %130 = llvm.add %129, %103  : i64
    %131 = llvm.getelementptr %121[%130] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %120, %131 : !llvm.ptr<i32>
    %132 = llvm.add %103, %102  : i64
    llvm.br ^bb7(%132 : i64)
  ^bb9:  // pred: ^bb7
    %133 = llvm.add %98, %97  : i64
    llvm.br ^bb5(%133 : i64)
  ^bb10:  // pred: ^bb5
    %134 = llvm.add %93, %92  : i64
    llvm.br ^bb3(%134 : i64)
  ^bb11:  // pred: ^bb3
    %135 = llvm.add %88, %87  : i64
    llvm.br ^bb1(%135 : i64)
  ^bb12:  // pred: ^bb1
    %136 = llvm.mlir.constant(4 : index) : i64
    %137 = llvm.mlir.constant(1 : index) : i64
    %138 = llvm.mlir.null : !llvm.ptr<i64>
    %139 = llvm.getelementptr %138[%136] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %140 = llvm.ptrtoint %139 : !llvm.ptr<i64> to i64
    %141 = llvm.mlir.constant(16 : index) : i64
    %142 = llvm.add %140, %141  : i64
    %143 = llvm.call @malloc(%142) : (i64) -> !llvm.ptr<i8>
    %144 = llvm.bitcast %143 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %145 = llvm.ptrtoint %144 : !llvm.ptr<i64> to i64
    %146 = llvm.mlir.constant(1 : index) : i64
    %147 = llvm.sub %141, %146  : i64
    %148 = llvm.add %145, %147  : i64
    %149 = llvm.urem %148, %141  : i64
    %150 = llvm.sub %148, %149  : i64
    %151 = llvm.inttoptr %150 : i64 to !llvm.ptr<i64>
    %152 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %153 = llvm.insertvalue %144, %152[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %154 = llvm.insertvalue %151, %153[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %155 = llvm.mlir.constant(0 : index) : i64
    %156 = llvm.insertvalue %155, %154[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %157 = llvm.insertvalue %136, %156[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %158 = llvm.insertvalue %137, %157[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %159 = llvm.mlir.constant(0 : index) : i64
    %160 = llvm.mlir.constant(4 : index) : i64
    %161 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%159 : i64)
  ^bb13(%162: i64):  // 2 preds: ^bb12, ^bb14
    %163 = llvm.icmp "slt" %162, %160 : i64
    llvm.cond_br %163, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %164 = llvm.extractvalue %158[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %165 = llvm.getelementptr %164[%162] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %19, %165 : !llvm.ptr<i64>
    %166 = llvm.add %162, %161  : i64
    llvm.br ^bb13(%166 : i64)
  ^bb15:  // pred: ^bb13
    %167 = llvm.mlir.constant(4 : index) : i64
    %168 = llvm.mlir.constant(1 : index) : i64
    %169 = llvm.mlir.null : !llvm.ptr<i64>
    %170 = llvm.getelementptr %169[%167] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %171 = llvm.ptrtoint %170 : !llvm.ptr<i64> to i64
    %172 = llvm.mlir.constant(16 : index) : i64
    %173 = llvm.add %171, %172  : i64
    %174 = llvm.call @malloc(%173) : (i64) -> !llvm.ptr<i8>
    %175 = llvm.bitcast %174 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %176 = llvm.ptrtoint %175 : !llvm.ptr<i64> to i64
    %177 = llvm.mlir.constant(1 : index) : i64
    %178 = llvm.sub %172, %177  : i64
    %179 = llvm.add %176, %178  : i64
    %180 = llvm.urem %179, %172  : i64
    %181 = llvm.sub %179, %180  : i64
    %182 = llvm.inttoptr %181 : i64 to !llvm.ptr<i64>
    %183 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %184 = llvm.insertvalue %175, %183[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %185 = llvm.insertvalue %182, %184[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %186 = llvm.mlir.constant(0 : index) : i64
    %187 = llvm.insertvalue %186, %185[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %188 = llvm.insertvalue %167, %187[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %189 = llvm.insertvalue %168, %188[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %190 = llvm.mlir.constant(0 : index) : i64
    %191 = llvm.mlir.constant(4 : index) : i64
    %192 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%190 : i64)
  ^bb16(%193: i64):  // 2 preds: ^bb15, ^bb17
    %194 = llvm.icmp "slt" %193, %191 : i64
    llvm.cond_br %194, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %195 = llvm.extractvalue %158[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %196 = llvm.getelementptr %195[%193] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %197 = llvm.load %196 : !llvm.ptr<i64>
    %198 = llvm.extractvalue %38[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %199 = llvm.load %198 : !llvm.ptr<i64>
    %200 = llvm.mul %197, %199  : i64
    %201 = llvm.extractvalue %189[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %202 = llvm.getelementptr %201[%193] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %200, %202 : !llvm.ptr<i64>
    %203 = llvm.add %193, %192  : i64
    llvm.br ^bb16(%203 : i64)
  ^bb18:  // pred: ^bb16
    %204 = llvm.mlir.constant(4 : index) : i64
    %205 = llvm.mlir.constant(1 : index) : i64
    %206 = llvm.mlir.null : !llvm.ptr<i1>
    %207 = llvm.getelementptr %206[%204] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %208 = llvm.ptrtoint %207 : !llvm.ptr<i1> to i64
    %209 = llvm.mlir.constant(16 : index) : i64
    %210 = llvm.add %208, %209  : i64
    %211 = llvm.call @malloc(%210) : (i64) -> !llvm.ptr<i8>
    %212 = llvm.bitcast %211 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %213 = llvm.ptrtoint %212 : !llvm.ptr<i1> to i64
    %214 = llvm.mlir.constant(1 : index) : i64
    %215 = llvm.sub %209, %214  : i64
    %216 = llvm.add %213, %215  : i64
    %217 = llvm.urem %216, %209  : i64
    %218 = llvm.sub %216, %217  : i64
    %219 = llvm.inttoptr %218 : i64 to !llvm.ptr<i1>
    %220 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %221 = llvm.insertvalue %212, %220[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %222 = llvm.insertvalue %219, %221[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %223 = llvm.mlir.constant(0 : index) : i64
    %224 = llvm.insertvalue %223, %222[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %225 = llvm.insertvalue %204, %224[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %226 = llvm.insertvalue %205, %225[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %227 = llvm.mlir.constant(0 : index) : i64
    %228 = llvm.mlir.constant(4 : index) : i64
    %229 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%227 : i64)
  ^bb19(%230: i64):  // 2 preds: ^bb18, ^bb20
    %231 = llvm.icmp "slt" %230, %228 : i64
    llvm.cond_br %231, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %232 = llvm.extractvalue %31[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %233 = llvm.getelementptr %232[%230] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %234 = llvm.load %233 : !llvm.ptr<i64>
    %235 = llvm.extractvalue %189[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %236 = llvm.getelementptr %235[%230] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %237 = llvm.load %236 : !llvm.ptr<i64>
    %238 = llvm.icmp "eq" %234, %237 : i64
    %239 = llvm.extractvalue %226[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %240 = llvm.getelementptr %239[%230] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %238, %240 : !llvm.ptr<i1>
    %241 = llvm.add %230, %229  : i64
    llvm.br ^bb19(%241 : i64)
  ^bb21:  // pred: ^bb19
    %242 = llvm.mlir.constant(4 : index) : i64
    %243 = llvm.mlir.constant(1 : index) : i64
    %244 = llvm.mlir.null : !llvm.ptr<i64>
    %245 = llvm.getelementptr %244[%242] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %246 = llvm.ptrtoint %245 : !llvm.ptr<i64> to i64
    %247 = llvm.mlir.constant(16 : index) : i64
    %248 = llvm.add %246, %247  : i64
    %249 = llvm.call @malloc(%248) : (i64) -> !llvm.ptr<i8>
    %250 = llvm.bitcast %249 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %251 = llvm.ptrtoint %250 : !llvm.ptr<i64> to i64
    %252 = llvm.mlir.constant(1 : index) : i64
    %253 = llvm.sub %247, %252  : i64
    %254 = llvm.add %251, %253  : i64
    %255 = llvm.urem %254, %247  : i64
    %256 = llvm.sub %254, %255  : i64
    %257 = llvm.inttoptr %256 : i64 to !llvm.ptr<i64>
    %258 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %259 = llvm.insertvalue %250, %258[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %260 = llvm.insertvalue %257, %259[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %261 = llvm.mlir.constant(0 : index) : i64
    %262 = llvm.insertvalue %261, %260[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %263 = llvm.insertvalue %242, %262[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %264 = llvm.insertvalue %243, %263[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %265 = llvm.mlir.constant(0 : index) : i64
    %266 = llvm.mlir.constant(4 : index) : i64
    %267 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%265 : i64)
  ^bb22(%268: i64):  // 2 preds: ^bb21, ^bb23
    %269 = llvm.icmp "slt" %268, %266 : i64
    llvm.cond_br %269, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %270 = llvm.extractvalue %226[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %271 = llvm.getelementptr %270[%268] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %272 = llvm.load %271 : !llvm.ptr<i1>
    %273 = llvm.extractvalue %158[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %274 = llvm.getelementptr %273[%268] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %275 = llvm.load %274 : !llvm.ptr<i64>
    %276 = llvm.extractvalue %49[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %277 = llvm.getelementptr %276[%268] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %278 = llvm.load %277 : !llvm.ptr<i64>
    %279 = llvm.select %272, %275, %278 : i1, i64
    %280 = llvm.extractvalue %264[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %281 = llvm.getelementptr %280[%268] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %279, %281 : !llvm.ptr<i64>
    %282 = llvm.add %268, %267  : i64
    llvm.br ^bb22(%282 : i64)
  ^bb24:  // pred: ^bb22
    %283 = llvm.mlir.constant(2 : index) : i64
    %284 = llvm.mlir.constant(1 : index) : i64
    %285 = llvm.mlir.constant(2 : index) : i64
    %286 = llvm.mlir.constant(2 : index) : i64
    %287 = llvm.mlir.constant(1 : index) : i64
    %288 = llvm.mlir.constant(4 : index) : i64
    %289 = llvm.mlir.constant(4 : index) : i64
    %290 = llvm.mlir.constant(8 : index) : i64
    %291 = llvm.mlir.null : !llvm.ptr<i32>
    %292 = llvm.getelementptr %291[%290] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %293 = llvm.ptrtoint %292 : !llvm.ptr<i32> to i64
    %294 = llvm.mlir.constant(16 : index) : i64
    %295 = llvm.add %293, %294  : i64
    %296 = llvm.call @malloc(%295) : (i64) -> !llvm.ptr<i8>
    %297 = llvm.bitcast %296 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %298 = llvm.ptrtoint %297 : !llvm.ptr<i32> to i64
    %299 = llvm.mlir.constant(1 : index) : i64
    %300 = llvm.sub %294, %299  : i64
    %301 = llvm.add %298, %300  : i64
    %302 = llvm.urem %301, %294  : i64
    %303 = llvm.sub %301, %302  : i64
    %304 = llvm.inttoptr %303 : i64 to !llvm.ptr<i32>
    %305 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %306 = llvm.insertvalue %297, %305[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %307 = llvm.insertvalue %304, %306[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %308 = llvm.mlir.constant(0 : index) : i64
    %309 = llvm.insertvalue %308, %307[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %310 = llvm.insertvalue %283, %309[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %311 = llvm.insertvalue %284, %310[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %312 = llvm.insertvalue %285, %311[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %313 = llvm.insertvalue %286, %312[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %314 = llvm.insertvalue %289, %313[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %315 = llvm.insertvalue %288, %314[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %316 = llvm.insertvalue %286, %315[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %317 = llvm.insertvalue %287, %316[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %318 = llvm.mlir.constant(0 : index) : i64
    %319 = llvm.mlir.constant(2 : index) : i64
    %320 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%318 : i64)
  ^bb25(%321: i64):  // 2 preds: ^bb24, ^bb35
    %322 = llvm.icmp "slt" %321, %319 : i64
    llvm.cond_br %322, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %323 = llvm.mlir.constant(0 : index) : i64
    %324 = llvm.mlir.constant(1 : index) : i64
    %325 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%323 : i64)
  ^bb27(%326: i64):  // 2 preds: ^bb26, ^bb34
    %327 = llvm.icmp "slt" %326, %324 : i64
    llvm.cond_br %327, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %328 = llvm.mlir.constant(0 : index) : i64
    %329 = llvm.mlir.constant(2 : index) : i64
    %330 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%328 : i64)
  ^bb29(%331: i64):  // 2 preds: ^bb28, ^bb33
    %332 = llvm.icmp "slt" %331, %329 : i64
    llvm.cond_br %332, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %333 = llvm.mlir.constant(0 : index) : i64
    %334 = llvm.mlir.constant(2 : index) : i64
    %335 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%333 : i64)
  ^bb31(%336: i64):  // 2 preds: ^bb30, ^bb32
    %337 = llvm.icmp "slt" %336, %334 : i64
    llvm.cond_br %337, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %338 = llvm.extractvalue %84[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %339 = llvm.mlir.constant(4 : index) : i64
    %340 = llvm.mul %321, %339  : i64
    %341 = llvm.mlir.constant(4 : index) : i64
    %342 = llvm.mul %20, %341  : i64
    %343 = llvm.add %340, %342  : i64
    %344 = llvm.mlir.constant(2 : index) : i64
    %345 = llvm.mul %331, %344  : i64
    %346 = llvm.add %343, %345  : i64
    %347 = llvm.add %346, %336  : i64
    %348 = llvm.getelementptr %338[%347] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %349 = llvm.load %348 : !llvm.ptr<i32>
    %350 = llvm.extractvalue %317[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %351 = llvm.mlir.constant(4 : index) : i64
    %352 = llvm.mul %321, %351  : i64
    %353 = llvm.mlir.constant(4 : index) : i64
    %354 = llvm.mul %326, %353  : i64
    %355 = llvm.add %352, %354  : i64
    %356 = llvm.mlir.constant(2 : index) : i64
    %357 = llvm.mul %331, %356  : i64
    %358 = llvm.add %355, %357  : i64
    %359 = llvm.add %358, %336  : i64
    %360 = llvm.getelementptr %350[%359] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %349, %360 : !llvm.ptr<i32>
    %361 = llvm.add %336, %335  : i64
    llvm.br ^bb31(%361 : i64)
  ^bb33:  // pred: ^bb31
    %362 = llvm.add %331, %330  : i64
    llvm.br ^bb29(%362 : i64)
  ^bb34:  // pred: ^bb29
    %363 = llvm.add %326, %325  : i64
    llvm.br ^bb27(%363 : i64)
  ^bb35:  // pred: ^bb27
    %364 = llvm.add %321, %320  : i64
    llvm.br ^bb25(%364 : i64)
  ^bb36:  // pred: ^bb25
    %365 = llvm.mlir.constant(2 : index) : i64
    %366 = llvm.mlir.constant(1 : index) : i64
    %367 = llvm.mlir.constant(2 : index) : i64
    %368 = llvm.mlir.constant(2 : index) : i64
    %369 = llvm.mlir.constant(1 : index) : i64
    %370 = llvm.mlir.constant(4 : index) : i64
    %371 = llvm.mlir.constant(4 : index) : i64
    %372 = llvm.mlir.constant(8 : index) : i64
    %373 = llvm.mlir.null : !llvm.ptr<i32>
    %374 = llvm.getelementptr %373[%372] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %375 = llvm.ptrtoint %374 : !llvm.ptr<i32> to i64
    %376 = llvm.mlir.constant(16 : index) : i64
    %377 = llvm.add %375, %376  : i64
    %378 = llvm.call @malloc(%377) : (i64) -> !llvm.ptr<i8>
    %379 = llvm.bitcast %378 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %380 = llvm.ptrtoint %379 : !llvm.ptr<i32> to i64
    %381 = llvm.mlir.constant(1 : index) : i64
    %382 = llvm.sub %376, %381  : i64
    %383 = llvm.add %380, %382  : i64
    %384 = llvm.urem %383, %376  : i64
    %385 = llvm.sub %383, %384  : i64
    %386 = llvm.inttoptr %385 : i64 to !llvm.ptr<i32>
    %387 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %388 = llvm.insertvalue %379, %387[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %389 = llvm.insertvalue %386, %388[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %390 = llvm.mlir.constant(0 : index) : i64
    %391 = llvm.insertvalue %390, %389[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %392 = llvm.insertvalue %365, %391[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %393 = llvm.insertvalue %366, %392[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %394 = llvm.insertvalue %367, %393[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %395 = llvm.insertvalue %368, %394[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %396 = llvm.insertvalue %371, %395[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %397 = llvm.insertvalue %370, %396[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %398 = llvm.insertvalue %368, %397[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %399 = llvm.insertvalue %369, %398[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %400 = llvm.mlir.constant(0 : index) : i64
    %401 = llvm.mlir.constant(2 : index) : i64
    %402 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%400 : i64)
  ^bb37(%403: i64):  // 2 preds: ^bb36, ^bb47
    %404 = llvm.icmp "slt" %403, %401 : i64
    llvm.cond_br %404, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %405 = llvm.mlir.constant(0 : index) : i64
    %406 = llvm.mlir.constant(1 : index) : i64
    %407 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%405 : i64)
  ^bb39(%408: i64):  // 2 preds: ^bb38, ^bb46
    %409 = llvm.icmp "slt" %408, %406 : i64
    llvm.cond_br %409, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %410 = llvm.mlir.constant(0 : index) : i64
    %411 = llvm.mlir.constant(2 : index) : i64
    %412 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%410 : i64)
  ^bb41(%413: i64):  // 2 preds: ^bb40, ^bb45
    %414 = llvm.icmp "slt" %413, %411 : i64
    llvm.cond_br %414, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %415 = llvm.mlir.constant(0 : index) : i64
    %416 = llvm.mlir.constant(2 : index) : i64
    %417 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%415 : i64)
  ^bb43(%418: i64):  // 2 preds: ^bb42, ^bb44
    %419 = llvm.icmp "slt" %418, %416 : i64
    llvm.cond_br %419, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %420 = llvm.extractvalue %84[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %421 = llvm.mlir.constant(4 : index) : i64
    %422 = llvm.mul %403, %421  : i64
    %423 = llvm.mlir.constant(4 : index) : i64
    %424 = llvm.mul %408, %423  : i64
    %425 = llvm.add %422, %424  : i64
    %426 = llvm.mlir.constant(2 : index) : i64
    %427 = llvm.mul %413, %426  : i64
    %428 = llvm.add %425, %427  : i64
    %429 = llvm.add %428, %418  : i64
    %430 = llvm.getelementptr %420[%429] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %431 = llvm.load %430 : !llvm.ptr<i32>
    %432 = llvm.sub %18, %431  : i32
    %433 = llvm.extractvalue %399[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %434 = llvm.mlir.constant(4 : index) : i64
    %435 = llvm.mul %403, %434  : i64
    %436 = llvm.mlir.constant(4 : index) : i64
    %437 = llvm.mul %408, %436  : i64
    %438 = llvm.add %435, %437  : i64
    %439 = llvm.mlir.constant(2 : index) : i64
    %440 = llvm.mul %413, %439  : i64
    %441 = llvm.add %438, %440  : i64
    %442 = llvm.add %441, %418  : i64
    %443 = llvm.getelementptr %433[%442] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %432, %443 : !llvm.ptr<i32>
    %444 = llvm.add %418, %417  : i64
    llvm.br ^bb43(%444 : i64)
  ^bb45:  // pred: ^bb43
    %445 = llvm.add %413, %412  : i64
    llvm.br ^bb41(%445 : i64)
  ^bb46:  // pred: ^bb41
    %446 = llvm.add %408, %407  : i64
    llvm.br ^bb39(%446 : i64)
  ^bb47:  // pred: ^bb39
    %447 = llvm.add %403, %402  : i64
    llvm.br ^bb37(%447 : i64)
  ^bb48:  // pred: ^bb37
    %448 = llvm.mlir.constant(2 : index) : i64
    %449 = llvm.mlir.constant(1 : index) : i64
    %450 = llvm.mlir.constant(2 : index) : i64
    %451 = llvm.mlir.constant(2 : index) : i64
    %452 = llvm.mlir.constant(1 : index) : i64
    %453 = llvm.mlir.constant(4 : index) : i64
    %454 = llvm.mlir.constant(4 : index) : i64
    %455 = llvm.mlir.constant(8 : index) : i64
    %456 = llvm.mlir.null : !llvm.ptr<i32>
    %457 = llvm.getelementptr %456[%455] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %458 = llvm.ptrtoint %457 : !llvm.ptr<i32> to i64
    %459 = llvm.mlir.constant(16 : index) : i64
    %460 = llvm.add %458, %459  : i64
    %461 = llvm.call @malloc(%460) : (i64) -> !llvm.ptr<i8>
    %462 = llvm.bitcast %461 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %463 = llvm.ptrtoint %462 : !llvm.ptr<i32> to i64
    %464 = llvm.mlir.constant(1 : index) : i64
    %465 = llvm.sub %459, %464  : i64
    %466 = llvm.add %463, %465  : i64
    %467 = llvm.urem %466, %459  : i64
    %468 = llvm.sub %466, %467  : i64
    %469 = llvm.inttoptr %468 : i64 to !llvm.ptr<i32>
    %470 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %471 = llvm.insertvalue %462, %470[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %472 = llvm.insertvalue %469, %471[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %473 = llvm.mlir.constant(0 : index) : i64
    %474 = llvm.insertvalue %473, %472[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %475 = llvm.insertvalue %448, %474[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %476 = llvm.insertvalue %449, %475[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %477 = llvm.insertvalue %450, %476[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %478 = llvm.insertvalue %451, %477[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %479 = llvm.insertvalue %454, %478[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %480 = llvm.insertvalue %453, %479[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %481 = llvm.insertvalue %451, %480[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %482 = llvm.insertvalue %452, %481[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %483 = llvm.mlir.constant(0 : index) : i64
    %484 = llvm.mlir.constant(2 : index) : i64
    %485 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%483 : i64)
  ^bb49(%486: i64):  // 2 preds: ^bb48, ^bb59
    %487 = llvm.icmp "slt" %486, %484 : i64
    llvm.cond_br %487, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %488 = llvm.mlir.constant(0 : index) : i64
    %489 = llvm.mlir.constant(1 : index) : i64
    %490 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%488 : i64)
  ^bb51(%491: i64):  // 2 preds: ^bb50, ^bb58
    %492 = llvm.icmp "slt" %491, %489 : i64
    llvm.cond_br %492, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %493 = llvm.mlir.constant(0 : index) : i64
    %494 = llvm.mlir.constant(2 : index) : i64
    %495 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%493 : i64)
  ^bb53(%496: i64):  // 2 preds: ^bb52, ^bb57
    %497 = llvm.icmp "slt" %496, %494 : i64
    llvm.cond_br %497, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %498 = llvm.mlir.constant(0 : index) : i64
    %499 = llvm.mlir.constant(2 : index) : i64
    %500 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%498 : i64)
  ^bb55(%501: i64):  // 2 preds: ^bb54, ^bb56
    %502 = llvm.icmp "slt" %501, %499 : i64
    llvm.cond_br %502, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %503 = llvm.extractvalue %399[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %504 = llvm.mlir.constant(4 : index) : i64
    %505 = llvm.mul %486, %504  : i64
    %506 = llvm.mlir.constant(4 : index) : i64
    %507 = llvm.mul %491, %506  : i64
    %508 = llvm.add %505, %507  : i64
    %509 = llvm.mlir.constant(2 : index) : i64
    %510 = llvm.mul %496, %509  : i64
    %511 = llvm.add %508, %510  : i64
    %512 = llvm.add %511, %501  : i64
    %513 = llvm.getelementptr %503[%512] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %514 = llvm.load %513 : !llvm.ptr<i32>
    %515 = llvm.extractvalue %399[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %516 = llvm.mlir.constant(4 : index) : i64
    %517 = llvm.mul %486, %516  : i64
    %518 = llvm.mlir.constant(4 : index) : i64
    %519 = llvm.mul %491, %518  : i64
    %520 = llvm.add %517, %519  : i64
    %521 = llvm.mlir.constant(2 : index) : i64
    %522 = llvm.mul %496, %521  : i64
    %523 = llvm.add %520, %522  : i64
    %524 = llvm.add %523, %501  : i64
    %525 = llvm.getelementptr %515[%524] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %526 = llvm.load %525 : !llvm.ptr<i32>
    %527 = llvm.icmp "slt" %514, %526 : i32
    %528 = llvm.select %527, %514, %526 : i1, i32
    %529 = llvm.extractvalue %482[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %530 = llvm.mlir.constant(4 : index) : i64
    %531 = llvm.mul %486, %530  : i64
    %532 = llvm.mlir.constant(4 : index) : i64
    %533 = llvm.mul %491, %532  : i64
    %534 = llvm.add %531, %533  : i64
    %535 = llvm.mlir.constant(2 : index) : i64
    %536 = llvm.mul %496, %535  : i64
    %537 = llvm.add %534, %536  : i64
    %538 = llvm.add %537, %501  : i64
    %539 = llvm.getelementptr %529[%538] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %528, %539 : !llvm.ptr<i32>
    %540 = llvm.add %501, %500  : i64
    llvm.br ^bb55(%540 : i64)
  ^bb57:  // pred: ^bb55
    %541 = llvm.add %496, %495  : i64
    llvm.br ^bb53(%541 : i64)
  ^bb58:  // pred: ^bb53
    %542 = llvm.add %491, %490  : i64
    llvm.br ^bb51(%542 : i64)
  ^bb59:  // pred: ^bb51
    %543 = llvm.add %486, %485  : i64
    llvm.br ^bb49(%543 : i64)
  ^bb60:  // pred: ^bb49
    %544 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %545 = llvm.insertvalue %317, %544[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %546 = llvm.insertvalue %482, %545[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %546 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>) attributes {input_names = ["v5_0", "v2_0"], llvm.emit_c_interface, output_names = ["v0_0", "v1_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %6 = llvm.extractvalue %0[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %7 = llvm.extractvalue %0[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.extractvalue %0[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.extractvalue %0[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %13 = llvm.extractvalue %12[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %14 = llvm.extractvalue %12[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %15 = llvm.extractvalue %12[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %16 = llvm.extractvalue %12[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %17 = llvm.extractvalue %12[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %18 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %13, %14, %15, %16, %17) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %18, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %14[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %25 = llvm.load %24 : !llvm.ptr<i64>
    %26 = llvm.insertvalue %25, %22[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.getelementptr %15[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %28 = llvm.load %27 : !llvm.ptr<i64>
    %29 = llvm.insertvalue %28, %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.mlir.constant(2 : i64) : i64
    %31 = llvm.getelementptr %14[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %32 = llvm.load %31 : !llvm.ptr<i64>
    %33 = llvm.insertvalue %32, %29[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.getelementptr %15[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %35 = llvm.load %34 : !llvm.ptr<i64>
    %36 = llvm.insertvalue %35, %33[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %37 = llvm.mlir.constant(3 : i64) : i64
    %38 = llvm.getelementptr %14[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %39 = llvm.load %38 : !llvm.ptr<i64>
    %40 = llvm.insertvalue %39, %36[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.getelementptr %15[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %42 = llvm.load %41 : !llvm.ptr<i64>
    %43 = llvm.insertvalue %42, %40[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %43, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %44 = llvm.mlir.constant(1 : i64) : i64
    %45 = llvm.getelementptr %0[%44] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %46 = llvm.load %45 : !llvm.ptr<ptr<i8>>
    %47 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %48 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %49 = llvm.call @omTensorGetDataPtr(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %50 = llvm.bitcast %49 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %51 = llvm.insertvalue %50, %48[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %52 = llvm.insertvalue %50, %51[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %53 = llvm.mlir.constant(0 : i64) : i64
    %54 = llvm.insertvalue %53, %52[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %55 = llvm.call @omTensorGetShape(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %56 = llvm.call @omTensorGetStrides(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %57 = llvm.mlir.constant(0 : i64) : i64
    %58 = llvm.getelementptr %55[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %59 = llvm.load %58 : !llvm.ptr<i64>
    %60 = llvm.insertvalue %59, %54[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %61 = llvm.getelementptr %56[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %62 = llvm.load %61 : !llvm.ptr<i64>
    %63 = llvm.insertvalue %62, %60[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.store %63, %47 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %47) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>) -> ()
    %64 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %65 = llvm.extractvalue %64[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %66 = llvm.extractvalue %64[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %67 = llvm.mlir.constant(2 : i64) : i64
    %68 = llvm.mlir.constant(16 : i64) : i64
    %69 = llvm.call @malloc(%68) : (i64) -> !llvm.ptr<i8>
    %70 = llvm.bitcast %69 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %71 = llvm.mlir.constant(4 : i64) : i64
    %72 = llvm.call @omTensorCreateUntyped(%71) : (i64) -> !llvm.ptr<i8>
    %73 = llvm.mlir.constant(1 : i64) : i64
    %74 = llvm.extractvalue %65[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.bitcast %74 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %76 = llvm.extractvalue %65[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %77 = llvm.bitcast %76 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%72, %73, %75, %77) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %78 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%72, %78) : (!llvm.ptr<i8>, i64) -> ()
    %79 = llvm.call @omTensorGetShape(%72) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %80 = llvm.call @omTensorGetStrides(%72) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %81 = llvm.mlir.constant(0 : i64) : i64
    %82 = llvm.extractvalue %65[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %83 = llvm.getelementptr %79[%81] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %82, %83 : !llvm.ptr<i64>
    %84 = llvm.extractvalue %65[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %85 = llvm.getelementptr %80[%81] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %84, %85 : !llvm.ptr<i64>
    %86 = llvm.mlir.constant(1 : i64) : i64
    %87 = llvm.extractvalue %65[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %88 = llvm.getelementptr %79[%86] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %87, %88 : !llvm.ptr<i64>
    %89 = llvm.extractvalue %65[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %90 = llvm.getelementptr %80[%86] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %89, %90 : !llvm.ptr<i64>
    %91 = llvm.mlir.constant(2 : i64) : i64
    %92 = llvm.extractvalue %65[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %93 = llvm.getelementptr %79[%91] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %92, %93 : !llvm.ptr<i64>
    %94 = llvm.extractvalue %65[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.getelementptr %80[%91] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %94, %95 : !llvm.ptr<i64>
    %96 = llvm.mlir.constant(3 : i64) : i64
    %97 = llvm.extractvalue %65[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.getelementptr %79[%96] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %97, %98 : !llvm.ptr<i64>
    %99 = llvm.extractvalue %65[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.getelementptr %80[%96] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %99, %100 : !llvm.ptr<i64>
    %101 = llvm.mlir.constant(0 : i64) : i64
    %102 = llvm.getelementptr %70[%101] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %72, %102 : !llvm.ptr<ptr<i8>>
    %103 = llvm.mlir.constant(4 : i64) : i64
    %104 = llvm.call @omTensorCreateUntyped(%103) : (i64) -> !llvm.ptr<i8>
    %105 = llvm.mlir.constant(1 : i64) : i64
    %106 = llvm.extractvalue %66[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.bitcast %106 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %108 = llvm.extractvalue %66[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.bitcast %108 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%104, %105, %107, %109) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %110 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%104, %110) : (!llvm.ptr<i8>, i64) -> ()
    %111 = llvm.call @omTensorGetShape(%104) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %112 = llvm.call @omTensorGetStrides(%104) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %113 = llvm.mlir.constant(0 : i64) : i64
    %114 = llvm.extractvalue %66[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %115 = llvm.getelementptr %111[%113] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %114, %115 : !llvm.ptr<i64>
    %116 = llvm.extractvalue %66[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %117 = llvm.getelementptr %112[%113] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %116, %117 : !llvm.ptr<i64>
    %118 = llvm.mlir.constant(1 : i64) : i64
    %119 = llvm.extractvalue %66[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %120 = llvm.getelementptr %111[%118] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %119, %120 : !llvm.ptr<i64>
    %121 = llvm.extractvalue %66[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %122 = llvm.getelementptr %112[%118] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %121, %122 : !llvm.ptr<i64>
    %123 = llvm.mlir.constant(2 : i64) : i64
    %124 = llvm.extractvalue %66[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %125 = llvm.getelementptr %111[%123] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %124, %125 : !llvm.ptr<i64>
    %126 = llvm.extractvalue %66[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %127 = llvm.getelementptr %112[%123] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %126, %127 : !llvm.ptr<i64>
    %128 = llvm.mlir.constant(3 : i64) : i64
    %129 = llvm.extractvalue %66[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %130 = llvm.getelementptr %111[%128] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %129, %130 : !llvm.ptr<i64>
    %131 = llvm.extractvalue %66[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %132 = llvm.getelementptr %112[%128] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %131, %132 : !llvm.ptr<i64>
    %133 = llvm.mlir.constant(1 : i64) : i64
    %134 = llvm.getelementptr %70[%133] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %104, %134 : !llvm.ptr<ptr<i8>>
    %135 = llvm.call @omTensorListCreate(%70, %67, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %135 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<130 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<130 x i8>> to !llvm.ptr<i8>
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

